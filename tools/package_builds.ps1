# Requires only the Windows PowerShell and .NET included with Windows.
[CmdletBinding()]
param(
    [string]$Root
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'
Add-Type -AssemblyName System.IO.Compression.FileSystem

# UUIDv5: separate identities for each permanent build number, stable across renames.
function Get-BuildUuid([string]$Namespace, [string]$Number) {
    $namespaceBytes = ([guid]$Namespace).ToByteArray()
    [Array]::Reverse($namespaceBytes, 0, 4)
    [Array]::Reverse($namespaceBytes, 4, 2)
    [Array]::Reverse($namespaceBytes, 6, 2)
    $sha = [System.Security.Cryptography.SHA1]::Create()
    try {
        $hash = $sha.ComputeHash($namespaceBytes + [System.Text.Encoding]::UTF8.GetBytes("build:$Number"))
    }
    finally {
        $sha.Dispose()
    }
    $hash[6] = ($hash[6] -band 15) -bor 80
    $hash[8] = ($hash[8] -band 63) -bor 128
    $hex = -join ($hash[0..15] | ForEach-Object { $_.ToString('x2') })
    return ([guid]::ParseExact($hex, 'N')).ToString()
}

function Get-BuildFiles([string]$EntryPoint) {
    $files = @{'manifest.json' = $manifestPath}
    $visited = [System.Collections.Generic.HashSet[string]]::new([System.StringComparer]::Ordinal)
    $pending = [System.Collections.Generic.Stack[string]]::new()
    $pending.Push($EntryPoint)
    while ($pending.Count -gt 0) {
        $functionId = $pending.Pop()
        if (-not $visited.Add($functionId)) { continue }
        $functionPath = Join-Path $functionsPath "$functionId.mcfunction"
        if (-not (Test-Path -LiteralPath $functionPath -PathType Leaf)) {
            throw "Build '$EntryPoint' references missing function '$functionId'."
        }
        $files["functions/$functionId.mcfunction"] = $functionPath
        foreach ($line in [System.IO.File]::ReadLines($functionPath)) {
            $command = $line.Trim()
            if (-not $command -or $command.StartsWith('#')) { continue }
            # Unwrap execute contexts without scanning message text for dependencies.
            while ($command -match '^execute\s+.*?\s+run\s+') {
                $command = $command.Substring($Matches[0].Length)
            }
            $functionReference = $null
            if ($command -match '^function\s+(\S+)') {
                $functionReference = $Matches[1]
            }
            elseif ($command -match '^schedule\s+on_area_loaded\s+clear\s+function\s+(\S+)') {
                $functionReference = $Matches[1]
            }
            elseif ($command -match '^schedule\s+on_area_loaded\s+add\s+tickingarea\s+\S+\s+(\S+)') {
                $functionReference = $Matches[1]
            }
            elseif ($command -match '^schedule\s+delay\s+(?:add|clear)\s+(\S+)') {
                $functionReference = $Matches[1]
            }
            elseif ($command -match '^schedule\s') {
                throw "Unsupported schedule command in '$functionId'; update dependency discovery: $command"
            }
            if ($functionReference) {
                if ($functionReference -notmatch '^(?:[a-z0-9_]+/)*_[a-z0-9_]+$') {
                    throw "Build '$EntryPoint' must reference only underscore-prefixed internal functions: $functionReference"
                }
                $pending.Push($functionReference)
            }
            if ($command -match '^structure\s+load\s+(\S+)') {
                $structureId = $Matches[1]
                if ($structureId -notmatch '^([a-z0-9_]+):([a-z0-9_]+(?:/[a-z0-9_]+)*)$') {
                    throw "Invalid namespaced structure identifier in '$functionId': $structureId"
                }
                $relativePath = "$($Matches[1])/$($Matches[2]).mcstructure"
                $structurePath = Join-Path $structuresPath $relativePath
                if (-not (Test-Path -LiteralPath $structurePath -PathType Leaf)) {
                    throw "Build '$EntryPoint' references missing structure '$structureId'."
                }
                $files["structures/$relativePath"] = $structurePath
            }
        }
    }
    return $files
}

# Write alongside the destination and replace it only after the ZIP closes successfully.
function Write-Pack([string]$Path, [hashtable]$Files, [string]$ManifestJson) {
    $temporaryPath = "$Path.$([guid]::NewGuid().ToString('N')).tmp"
    try {
        $archive = [System.IO.Compression.ZipFile]::Open($temporaryPath, 'Create')
        try {
            foreach ($entryName in ($Files.Keys | Sort-Object)) {
                if ($entryName -eq 'manifest.json' -and $ManifestJson) {
                    $entry = $archive.CreateEntry($entryName)
                    $writer = [System.IO.StreamWriter]::new($entry.Open(), [System.Text.UTF8Encoding]::new($false))
                    try { $writer.Write($ManifestJson) }
                    finally { $writer.Dispose() }
                }
                else {
                    $null = [System.IO.Compression.ZipFileExtensions]::CreateEntryFromFile(
                        $archive, $Files[$entryName], $entryName, [System.IO.Compression.CompressionLevel]::Optimal
                    )
                }
            }
        }
        finally {
            $archive.Dispose()
        }
        Move-Item -LiteralPath $temporaryPath -Destination $Path -Force
    }
    finally {
        if (Test-Path -LiteralPath $temporaryPath) {
            Remove-Item -LiteralPath $temporaryPath -Force
        }
    }
}

try {
    if (-not $Root) { $Root = Split-Path -Parent $PSScriptRoot }
    $Root = (Resolve-Path -LiteralPath $Root).Path
    $sourcePath = Join-Path $Root 'src'
    $manifestPath = Join-Path $sourcePath 'manifest.json'
    $functionsPath = Join-Path $sourcePath 'functions'
    $structuresPath = Join-Path $sourcePath 'structures'
    if (-not (Test-Path -LiteralPath $manifestPath -PathType Leaf)) {
        throw "Manifest not found: $manifestPath"
    }
    foreach ($directory in @($functionsPath, $structuresPath)) {
        if (-not (Test-Path -LiteralPath $directory -PathType Container)) {
            throw "Required source directory not found: $directory"
        }
    }
    $manifestJson = [System.IO.File]::ReadAllText($manifestPath)
    $manifest = ConvertFrom-Json $manifestJson
    $null = [guid]$manifest.header.uuid
    foreach ($module in $manifest.modules) {
        $null = [guid]$module.uuid
        if (($module.version -join '.') -ne ($manifest.header.version -join '.')) {
            throw 'Manifest header and module versions must match.'
        }
    }

    $publicNamePattern = '^(?<number>[1-9][0-9]*)_[a-z][a-z0-9]*(?:_[a-z0-9]+)*$'
    $publicFunctions = @(Get-ChildItem -LiteralPath $functionsPath -File -Filter '*.mcfunction' |
        Where-Object { -not $_.BaseName.StartsWith('_') })
    if ($publicFunctions.Count -eq 0) { throw 'No public build functions found.' }
    $numbers = [System.Collections.Generic.HashSet[string]]::new()
    $plans = @()
    # Resolve every dependency before replacing any existing output.
    foreach ($publicFunction in $publicFunctions) {
        if ($publicFunction.BaseName -cnotmatch $publicNamePattern) {
            throw "Invalid public build filename: $($publicFunction.Name)"
        }
        $number = $Matches['number']
        if (-not $numbers.Add($number)) { throw "Duplicate public build number: $number" }
        $files = Get-BuildFiles $publicFunction.BaseName
        $buildManifest = ConvertFrom-Json $manifestJson
        $buildManifest.header.name = "$($manifest.header.name) - $($publicFunction.BaseName)"
        $buildManifest.header.description = "Run /function $($publicFunction.BaseName)"
        $buildManifest.header.uuid = Get-BuildUuid $manifest.header.uuid $number
        foreach ($module in $buildManifest.modules) {
            $module.uuid = Get-BuildUuid $module.uuid $number
        }
        $plans += [pscustomobject]@{
            Name = $publicFunction.BaseName
            Files = $files
            Manifest = (ConvertTo-Json $buildManifest -Depth 100)
        }
    }

    $plans = @($plans | Sort-Object { [long](($_.Name -split '_', 2)[0]) })
    $outputPath = Join-Path $Root 'packs'
    $null = [System.IO.Directory]::CreateDirectory($outputPath)
    $debugFiles = @{'manifest.json' = $manifestPath}
    foreach ($directory in @($functionsPath, $structuresPath)) {
        foreach ($file in (Get-ChildItem -LiteralPath $directory -Recurse -File)) {
            $entryName = $file.FullName.Substring($sourcePath.Length + 1).Replace('\', '/')
            $debugFiles[$entryName] = $file.FullName
        }
    }
    Write-Host 'Packaging full debug pack...'
    Write-Pack (Join-Path $Root 'ai-minecraft-builds.mcpack') $debugFiles ''
    foreach ($plan in $plans) {
        Write-Host "Packaging $($plan.Name)..."
        Write-Pack (Join-Path $outputPath "$($plan.Name).mcpack") $plan.Files $plan.Manifest
    }
    # Only remove obsolete numbered outputs after every current build succeeds.
    $expectedNames = @($plans | ForEach-Object { "$($_.Name).mcpack" })
    foreach ($oldPack in (Get-ChildItem -LiteralPath $outputPath -File -Filter '*.mcpack')) {
        if ($oldPack.BaseName -match $publicNamePattern -and $oldPack.Name -notin $expectedNames) {
            Remove-Item -LiteralPath $oldPack.FullName -Force
        }
    }
    Write-Host "Created full debug pack and $($plans.Count) individual build packs."
}
catch {
    [Console]::Error.WriteLine("ERROR: $($_.Exception.Message)")
    exit 1
}
