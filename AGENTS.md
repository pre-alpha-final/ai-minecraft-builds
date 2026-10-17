# AGENTS.md

## Scope

These instructions apply to the entire repository.

This repository collects AI-generated Minecraft Bedrock build blueprints. Most public builds are standalone `.mcfunction` files authored from natural-language prompts; imported 3D assets may instead be voxelized into functions or native `.mcstructure` files. Every addition must remain Bedrock-compatible, preserve the intended design or recognizable source geometry, and package cleanly with the existing Windows build script.

## Branches

Use `feature/<feature-name>` for new branches. Do not create Codex-specific branch names.

## Repository map and conventions

- `README.md` is the user-facing overview, placement guidance, and packaging documentation.
- `src/manifest.json` defines the behavior pack and its minimum engine version (currently Bedrock 1.21.50). Keep the header and data-module versions identical.
- `src/functions/` contains all callable functions and internal callbacks. Public function filenames use `<number>_<lowercase_snake_case_name>.mcfunction` and are invoked without the extension, for example `/function 2_theme_park_ferris_wheel`.
- Most numbered `*_theme_park_*.mcfunction` files are standalone generated builds. They establish the current conventions for section comments, caret-relative placement, large foundations, decorative detail, and optional start/completion messages.
- `src/structures/ai_minecraft_builds/` is the behavior-pack structure namespace. The folder name and identifiers used by `structure load` must agree.
- Imported source models are optional working inputs and may not be committed after conversion. Record their filenames and relevant metadata in the generated build header; source assets outside `src/` and media under `docs/` are not included by the packager.
- `build_ai_minecraft_pack.bat` runs `tools/package_builds.ps1` using Windows PowerShell. It packages only `src/manifest.json`, `src/functions`, and `src/structures`: the complete debug pack remains at repository-root `ai-minecraft-builds.mcpack`, and one self-contained pack per public build is written to `packs/<number>_<build_name>.mcpack`.
- `packs/` is the generated individual-pack output folder. Keep its `.gitkeep`; generated `.mcpack` files and temporary archives are ignored by Git.

Files whose names begin with `_` are internal implementation details, not public entry points. Every public build should have one obvious function name for the player to run.

## Public build naming and numbering

- Every public build has exactly one entry point named `<number>_<lowercase_snake_case_name>.mcfunction`, such as `2_theme_park_ferris_wheel.mcfunction`.
- Assign positive integers starting at 1, without zero padding, in build creation order. Each number belongs to only one public build, so `/function 1_` matches exactly one entry point.
- Keep assigned numbers stable when editing or renaming a build. Never reuse a retired number or renumber existing builds after a deletion. Use the next never-assigned number for a new build; the current catalog ends at 18 (Tidal Kingdom), so the next build is 19. Check the current filenames and the retained branch history. An abandoned, unmerged experiment does not reserve a public number merely because it exists on another ref; distinguish it from a build actually assigned and later retired in the retained catalog. Confirm ancestry and user intent before treating an unrelated branch as authoritative.
- For the initial migration, creation order follows Git history, including the former `functions/` directory. Builds first recorded in the same commit are ordered alphabetically by their unnumbered public filename. The numbered catalog is listed in `README.md`.
- Keep internal callbacks underscore-prefixed (`_<build_name>_tickingarea_loaded` and `_<build_name>_remove_tickingarea`). Never add a public alias or another function beginning with the same `<number>_` prefix. Structure identifiers and ticking-area names do not need the public number.
- Generators must retain the assigned public name separately from asset/callback base names. Update generator outputs, validation paths, headers, metrics, and documented `/function` commands whenever an entry point is renamed.

## Line endings

Preserve every existing file's line endings exactly.

Before editing a text file, detect whether it uses CRLF or LF. Use the same style for replacements and inserted lines, do not create mixed line endings, and do not normalize a file unless explicitly required. New `.mcfunction` files should use LF, matching the existing functions. Root Windows-oriented files such as `.bat` and the current root Markdown files use CRLF.

After editing, run `git diff --check`. Because untracked files are not included in normal diffs, also check new text files for trailing whitespace, extra blank lines at EOF, mixed line endings, and malformed commands.

## Bedrock-only requirement

All generated builds must use Minecraft Bedrock commands, syntax, block identifiers, and behavior-pack resources.

- Prefer namespaced vanilla block identifiers such as `minecraft:white_concrete`.
- Do not use Java-only blocks, NBT syntax, command forms, block states, predicates, or data packs.
- Function commands do not begin with `/`.
- Use `fill` for contiguous regions and `setblock` for isolated blocks.
- Use caret-local coordinates so builds follow the player's facing direction.
- Treat caret coordinates as `^left ^up ^forward`.
- Tell the player to stand at ground level, face a cardinal direction, and look horizontally.
- Keep the player outside the generated volume by shifting large sculptures forward.
- Verify every unique command and resource identifier against the current official Bedrock documentation when compatibility is uncertain.

Read the current `src/manifest.json` rather than assuming an engine version. Its minimum is currently `[1, 21, 50]`; delayed scheduling requires that version or newer.

## Public-function cardinal snap

Every public `.mcfunction` must begin its executable work by centering the player on the current block, leveling pitch, and snapping yaw to the closest cardinal direction. Use this exact ordered sequence; the order makes boundary ties deterministic and prevents a teleport from cascading into a later yaw branch:

```mcfunction
execute if entity @s[rym=-45,ry=45] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 0 0
execute if entity @s[rym=45,ry=135] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 90 0
execute if entity @s[rym=135,ry=180] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 180 0
execute if entity @s[rym=-180,ry=-135] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 180 0
execute if entity @s[rym=-135,ry=-45] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 -90 0
```

After the snap, re-anchor every remaining public-function command at the player's updated position and rotation with:

`execute as @s at @s rotated as @s run <original command>`

This re-anchoring is required even for commands that do not visibly use coordinates so the convention remains mechanically checkable. If the original command is itself an `execute`, nesting it after `run` is valid and preserves its deliberately repositioned subcontext. Count the five snap commands when applying the function limit and documenting wrapper totals.

Use `tools/cardinal_snap.py` to apply or check the convention across public functions. Generators that write public functions must pass their output lines through `cardinal_snap.transform_public_lines` so regeneration cannot remove the snap. Preserve each function's existing line endings when applying the transformation.

Never add the snap sequence to underscore-prefixed internal callbacks. Scheduled callbacks do not preserve a player executor, position, or rotation, and must remain player-independent.

## Choose the build representation

Use the simplest representation that faithfully implements the build:

- For a prompt-authored building or attraction whose exact command count is at most 10,000, add one standalone `.mcfunction` under `src/functions/`.
- For an imported or generated voxel model that compresses to at most 10,000 commands without changing its geometry, a standalone `.mcfunction` is also acceptable.
- For a build above 10,000 commands, use namespaced `.mcstructure` assets and the required three-function loader lifecycle described below.
- Do not convert an ordinary readable function into a binary structure merely because a structure is possible. Keep hand-authored builds inspectable unless command limits, fidelity, or load reliability justify the binary format.

Count executable lines, not comments or blank lines, when applying the function limit. The current standalone examples range from hundreds to roughly 7,000 commands.

## Prompt-authored mcfunction workflow

### 1. Inspect and plan

Before adding or substantially changing a generated blueprint:

1. Read `README.md`, `src/manifest.json`, and at least one existing function with a similar scale or subject.
2. Assign the next never-used public build number and choose `<number>_<lowercase_snake_case_name>.mcfunction` under the naming standard above. Confirm the number and name do not collide with any public function, internal callback, structure identifier, or ticking-area name.
3. Establish the build's coordinate bounds, footprint, maximum height, player origin, entrance direction, and required clearance before writing commands.
4. Break complex builds into clearly labeled sections such as foundation, structure, ride or focal geometry, scenery, lighting, and finishing details.
5. Decide whether the build is static or functional. Do not imply that decorative rides animate unless commands actually implement animation.
6. Plan for the standard public-function cardinal snap and the re-anchored execution prefix on every subsequent command.

### Coaster layout, theme, and scale

For prompt-authored roller coasters, design quality and thematic identity take priority over maximizing track or occupied-block counts.

- When a user asks for the "scale of" an existing attraction without naming a metric, interpret scale as a comparable physical envelope, landmark size, visual ambition, and overall experience. Do not assume they want the same rail count, occupied-voxel count, or another hidden numerical target.
- Treat track length as a consequence of the route, not the design objective. Never add repeated close parallel rows, a dense serpentine or snake, filler track, hidden mass, or scenery-free detours merely to increase a metric unless the user explicitly requests that exact metric.
- Begin with the theme. Establish a small set of recognizable landmarks or districts, reserve deliberate open space around them, and route the coaster to reveal, approach, cross, frame, or pass through those scenes.
- A large coaster should use its volume in three dimensions: include meaningful bends, climbs, drops, elevation reversals, crossings with safe separation, broad runs, and changing sightlines. Avoid layouts that read primarily as a packed rectangular grid.
- Open space is part of the build, not unused capacity. Preserve courtyards, lagoons, canyons, forests, plazas, or other negative space when they strengthen composition and make landmarks legible.
- Keep the ride continuously connected and functional. Plan flat station track, powered straight rails, supported elevated sections, safe corner approaches, and sufficient rider clearance through every themed set piece.
- Validate and report design metrics that describe the experience, such as curve count, major climb and drop count, track elevation range, footprint, and named landmarks. Rail count remains useful for validation but should not be presented as the primary measure of quality.
- Render and inspect at least a top-down route projection for a large generated coaster. Reject or redesign obvious track cramming, accidental repetitive striping, weak landmark composition, or large areas whose only purpose is increasing counts.

Jungle Leviathan is the positive layout reference. It uses a large footprint for bends, elevation changes, scenery, and open space. When a request compares scale to another attraction but prioritizes art direction and ride design, preserve the comparable physical envelope and landmark ambition without treating track length as the target.

### 2. Author the build

- Prefer `fill` for exact cuboids and straight runs, and `setblock` for isolated or irregular detail.
- Keep commands grouped in construction order. Build supporting terrain and shells before fragile blocks, rails, liquids, entities, or final effects that depend on neighboring blocks.
- Caret coordinates may be bare (`^`) or numeric (`^-3`, `^12`). If an `execute positioned` subcommand changes the local origin, document why and use tilde coordinates only inside the deliberately repositioned context. Keep that original command intact after the standard re-anchoring prefix.
- Large foundations may extend below the player's feet, but avoid enclosing or obstructing the player at the function origin. Forward-offset sculptures should keep their nearest occupied block safely away from the player.
- Use comments for navigation and placement information, not to disguise invalid, speculative, or omitted commands.
- Messages, sounds, and entity summons are optional. If used, keep selectors and ranges intentional and ensure the build remains useful when those cosmetic commands are removed.
- Place water or lava late enough that surrounding geometry exists before fluids begin updating. Place connected rails in travel order when their automatic shape is important.

### 3. Document the public function

Start each public build with a concise header that states:

- the build name and Minecraft Bedrock Edition;
- where the player stands, which way to face, and that the view must be horizontal;
- width, depth, height, coordinate bounds, or enough equivalent detail to choose a clear site;
- whether the origin is the center, front-center, or an offset observation point;
- whether the result is static/decorative;
- a backup or disposable-world warning for builds that overwrite a large volume.

Commands inside a function never include a leading `/`; user-facing run instructions do.

## Imported 3D asset workflow

### 1. Inspect the repository and source asset

Before generating anything:

1. Inspect existing functions, naming conventions, comments, placement instructions, and approximate sizes.
2. Read the 3D file header and metadata before decoding the full payload.
3. Record source format, endianness, vertex and face counts, primitive modes, materials, colors, node transforms, bounds, and scene hierarchy.
4. Identify irrelevant scene geometry such as background planes, star fields, cameras, lights, or disconnected decorative elements. Exclude it only when the intended subject can be isolated by a clear geometric or scene-graph rule.
5. Do not infer triangles when a glTF primitive explicitly uses another mode. Respect `POINTS`, `LINES`, `LINE_STRIP`, `TRIANGLES`, `TRIANGLE_STRIP`, and `TRIANGLE_FAN`.
6. Apply node translation, rotation, and scale when they are present.

Useful format notes:

- `.gltf`: parse JSON, accessors, buffer views, component types, byte offsets, byte strides, primitive modes, node transforms, data URIs, materials, and textures.
- Binary `.ply`: parse the header dynamically, honor property order and declared scalar/list types, then decode vertices and faces using the declared endianness.
- ASCII `.ply`, `.obj`, and ASCII `.stl`: parse text without changing the source file.
- Binary `.stl`, `.glb`, `.drc`, and `.usdz`: use a format-aware decoder rather than treating the payload as text.

### 2. Choose orientation, scale, and placement

Map the model into a Minecraft coordinate system deliberately:

- Model vertical axis becomes caret Y.
- Preserve the front view and handedness. Since positive caret X points left from the player's view, model X often needs to be inverted.
- Orient the model's visible front toward the player; model depth may also need inversion.
- Shift the build forward far enough that the nearest block does not intersect the player.
- Shift vertical coordinates so the lowest intended block is normally `^1`.
- State the final width, height, depth, center offset, scale, and required player position in the function header.
- For a second high-detail attempt, multiply the linear scale exactly; expect surface voxel and command counts to grow roughly with the square of the scale.

Render or otherwise inspect a projection before finalizing orientation when left/right details matter.

### 3. Voxelize faithfully

Choose the conversion method that matches the source:

- Line primitives: rasterize every segment with enough samples that rounded voxel coordinates remain connected. Sampling at least twice per largest block-axis delta is a good baseline.
- Dense surface meshes or point-derived meshes: quantize vertices into voxels and use majority voting when many colored vertices land in one voxel.
- Sparse triangle meshes: rasterize triangle faces or perform a proper surface voxelization; vertex-only conversion will leave holes.
- Solid builds: fill only genuinely enclosed interiors. Do not fill unrelated empty space merely to reduce command count.
- Deduplicate voxels before emitting commands.
- When multiple source colors map to one voxel, use a deterministic majority or nearest-surface rule.

For colored sources, map source RGB values to a small vanilla Bedrock palette using a documented nearest-color rule. Concrete is preferred for clean sculptures. Ignore alpha only when the geometry is visibly intended to remain present; otherwise treat transparency deliberately.

### 4. Compress commands without changing the build

Group adjacent voxels of the same block into `fill` commands. Start with runs along the axis that yields the fewest commands; test X, Y, and Z when the build is large. Use `setblock` for singletons.

Do not let command compression fill visible gaps, cavities, or unrelated interior space. Check every `fill` volume against Bedrock's fill limit.

### 5. Validate the generated representation

Before delivery, verify:

- Every non-comment, nonblank function line matches an allowed Bedrock command form.
- All block identifiers are vanilla Bedrock resources supported by the manifest's minimum version. New or changed commands should use explicit `minecraft:` block identifiers even though some existing functions use accepted unnamespaced identifiers.
- Command count, occupied voxel count, coordinate bounds, dimensions, material list, and maximum fill volume are computed rather than estimated when source geometry is available.
- No malformed, truncated, or tool-inserted omission-marker lines.
- No trailing whitespace or extra blank line at EOF.
- LF line endings for new `.mcfunction` files.
- `git diff --check` passes.
- The generated pack contains the new function and any required assets.

Include a concise header with run instructions, dimensions, source name, palette, block count, command count, and a backup/disposable-world warning for large builds.

## The 10,000-command limit

Minecraft Bedrock's `functioncommandlimit` has a maximum value of 10,000. Do not solve an oversized build by telling the user to raise this gamerule above 10,000.

Use this default decision:

- At or below 10,000 commands: emit a normal standalone `.mcfunction`.
- Above 10,000 commands: use namespaced `.mcstructure` assets with a small loader function unless the user explicitly requests a different tradeoff.
- Do not assume that nesting oversized subfunctions is a safe bypass for one function call.
- Delayed scheduling is only appropriate when execution position and rotation are preserved explicitly; caret-relative build stages must not silently move to a server or world origin.

Official references:

- Function limit and gamerule: https://learn.microsoft.com/en-us/minecraft/creator/commands/commands/gamerule?view=minecraft-bedrock-stable
- Structure command: https://learn.microsoft.com/en-us/minecraft/creator/commands/commands/structure?view=minecraft-bedrock-stable
- Structure dimensions: https://learn.microsoft.com/en-us/minecraft/creator/documents/structures/introductiontostructureblocks?view=minecraft-bedrock-stable
- Namespaced structure folders: https://learn.microsoft.com/en-us/minecraft/creator/documents/practices/guidelinesforbuildingcooperativeaddons?view=minecraft-bedrock-stable

## Native structure bypass

### When to use it

A `.mcstructure` can place tens of thousands of blocks through one `structure load` command, so the number of voxels is no longer tied to the number of commands. Use this for high-detail conversions that exceed the function limit.

The Jungle Leviathan coaster is the reference for a near-limit prompt-authored loader with many structure assets and ticking areas:

- Loader: `src/functions/12_theme_park_jungle_leviathan_roller_coaster.mcfunction`
- Callbacks: `src/functions/_theme_park_jungle_leviathan_roller_coaster_tickingarea_loaded.mcfunction` and `src/functions/_theme_park_jungle_leviathan_roller_coaster_remove_tickingarea.mcfunction`
- Assets: `src/structures/ai_minecraft_builds/theme_park_jungle_leviathan_roller_coaster_x*_z*.mcstructure`
- Generator and validator: `tools/generate_jungle_leviathan.py`

For a theme-first coaster, treat the physical envelope as room for broad runs, open scenic courts, repeated elevation reversals, and landmark-framing bends rather than as a mandate for raw track length. Keep those goals explicit in the generator and validate them in its reported design metrics and route projection.

### Required three-function loader convention

Every build large enough to require `.mcstructure` assets must use exactly three `.mcfunction` files for its loader lifecycle:

1. `<number>_<build_name>.mcfunction`: the only public entry point. It runs in the player's context, snaps facing, guards against concurrent runs, and manages startup and stale state. It may issue immediate cardinally selected loads only when it does not remove and recreate their ticking-area names in the same call. Deferred startup or automatic staging must save the original context and schedule the lifecycle dispatcher.
2. `_<build_name>_tickingarea_loaded.mcfunction`: an internal callback registered with `schedule on_area_loaded`. It counts readiness for the active stage and schedules the settle/cleanup delay. It does not place structures.
3. `_<build_name>_remove_tickingarea.mcfunction`: an internal delayed cleanup callback. For deferred startup or automatic staging, it also dispatches stage starts and transitions, explicitly restoring saved context before every placement. It removes only this build's areas and temporary marker on completion or failure.

Both internal callback filenames and all command references to them must begin with `_`. Start each internal file with an `INTERNAL CALLBACK - do not run manually` comment. Do not create unprefixed callback aliases, combine the lifecycle into the public loader, or require the player to invoke either callback. Use unique callback paths and a unique ticking-area name for every build.

### World-height bounds and default flat worlds

Validate the complete placement box of every native structure against the target dimension before loading it. In the Overworld, legal block Y is **-64 through 319**, inclusive. The entire asset box must fit, including explicit air and omitted cells; checking only occupied voxels or the visible deck is insufficient. A request outside that box can reject the whole structure while all preload callbacks still report ready.

- Default post-1.18 Classic Flat ground puts the player's feet at **Y -60**. New builds intended for ordinary flat-world use must support this placement without asking the player to create an elevated platform.
- For each asset, compute `load_min_y = floor(feet_y + relative_load_y)` and `load_max_y = load_min_y + sizeY - 1`. Require `load_min_y >= -64` and `load_max_y <= 319`. Derive and document the supported feet-Y interval from all assets, including any placement lift or deliberately repositioned context.
- Tidal Kingdom's original load offset `^-5` produced Y -65 from feet Y -60 and was rejected. Raising the placement offset to `^-4` loads from Y -64 and preserves the full geometry. Its actual placement bounds are now Y -4 through 114 relative to the player, supporting feet Y -60 through 205.
- Raise the build's placement origin when needed; keep a gravity-affected saved marker on its original supported ground. Do not move the marker upward and assume it will remain suspended. Check entrance access after raising a deck.
- Keep source geometry coordinates and final placement coordinates explicit and separate in metrics. Include the lift in headers, boarding coordinates, clearance, and placement bounds. Reject unsupported heights clearly rather than allowing an apparently successful empty installation.
- Include a real-engine low-height case at feet Y -60 in loader validation. Successful tests at Y 64 or Y 70 do not establish Classic Flat compatibility.

### Structure partitioning

Bedrock structure dimensions must remain within the supported limits. Use the conservative documented maxima:

- X: 64
- Y: 257
- Z: 64

Split a larger build along X and/or Z. Keep every chunk's local coordinate range, size, and placement anchor explicit. Ensure chunk boundaries are adjacent with no overlap or gap, and confirm the sum of occupied blocks across chunks equals the original voxel count.

Store behavior-pack structures under:

`src/structures/<namespace>/<structure_name>.mcstructure`

Load them with the matching identifier:

`structure load <namespace>:<structure_name> ...`

The debug pack must include all functions and structures. Each individual build pack must include its public loader, both internal callbacks, and every referenced namespaced structure asset, preserving their paths.

### Bedrock mcstructure encoding

Bedrock `.mcstructure` files use uncompressed little-endian NBT. When generating them directly, reproduce the standard structure layout:

- Root compound with an empty name.
- `format_version`: integer `1`.
- `size`: list of three integers `[x, y, z]`.
- `structure.block_indices`: a list containing two integer lists.
- First block-index layer: palette index for an occupied voxel and `-1` for an omitted/void cell.
- Second block-index layer: `-1` unless a second block layer is intentionally needed.
- `structure.entities`: empty list when there are no entities.
- `structure.palette.default.block_palette`: compounds containing `name`, `states`, and a compatible block `version`.
- `structure.palette.default.block_position_data`: empty compound when no block entities are used.
- `structure_world_origin`: three-integer list, normally `[0, 0, 0]` for generated pack assets.

The linear block index order is:

`index = (x * sizeY + y) * sizeZ + z`

Use `-1` for empty cells so loading a sparse sculpture does not clear unrelated world blocks.

### Cardinal-direction loader

Structures are world-axis-aligned and require an explicit rotation. To retain the repository's face-any-cardinal-direction behavior, use Bedrock yaw selectors and one rotation per direction:

- South, yaw near 0: `0_degrees`
- West, yaw near 90: `90_degrees`
- North, yaw near 180 or -180: `180_degrees`
- East, yaw near -90: `270_degrees`

Use `@s[rym=...,ry=...]` filters in a player-executed loader and provide a separate load command for every structure chunk. Compute a rotation-specific caret-relative anchor for every chunk; do not reuse the `0_degrees` anchor for other rotations. Bedrock rotates each individual structure inside its own bounding box, so an uncorrected origin separates or overlaps chunks whose dimensions differ.

For a chunk whose original global minimum is `(x0, z0)`, whose local dimensions are `(sizeX, sizeZ)`, and whose unrotated build origin is `(^left0, ^forward0)`, use these caret-coordinate load anchors:

- South, `0_degrees`: `(^left0 + x0, ^forward0 + z0)`
- West, `90_degrees`: `(^left0 + x0, ^forward0 + z0 + sizeZ - 1)`
- North, `180_degrees`: `(^left0 + x0 + sizeX - 1, ^forward0 + z0 + sizeZ - 1)`
- East, `270_degrees`: `(^left0 + x0 + sizeX - 1, ^forward0 + z0)`

After generating the loader, simulate each rotation for every occupied voxel and confirm that all four facings produce the identical caret-local coordinate and material map. Comparing only overall bounds is insufficient because misanchored side chunks can overlap or leave gaps while retaining plausible dimensions.

The wrapper itself must remain comfortably below 10,000 commands. Run it as a player; if called without a player executor, `@s` direction tests cannot select the intended builder.

### Preload chunks for structure-backed loaders

Bedrock requires every target chunk for a `structure load` request to be fully loaded before placement. A large footprint can extend beyond the player's simulation distance even when every individual `.mcstructure` is within the structure dimension limits. In that case Bedrock reports `A placement request has been queued and it will be executed when the specified area is fully loaded.` This message does not by itself indicate a corrupt structure. If the player remains stationary and the missing chunks never load, the request can appear to hang indefinitely.

Make every structure-backed loader self-contained by managing one or more temporary preloaded ticking areas through the required three-function convention:

1. Choose one unique, static ticking-area name per preload rectangle and unique cleanup function paths per loader. Never use `tickingarea remove_all`, because that would interfere with unrelated builds and world systems.
2. In the player-executed wrapper, clear that loader's stale area-loaded and delayed callbacks and remove only its own stale areas. When those names will be recreated, save the placement context and wait at least two game ticks before creation; removal is not complete within the same function call.
3. Prefer one preloaded rectangular ticking area whose caret-relative corners cover the complete horizontal build footprint: `tickingarea add <from> <to> <unique_name> true`. If the conservative footprint exceeds 100 chunks, partition it into the fewest nonoverlapping rectangles that each remain at or below 100 chunks and give every rectangle a unique name.
4. Register the same loaded callback for every rectangle with `schedule on_area_loaded add tickingarea <unique_name> <loaded_callback>`.
5. Issue cardinally selected loads in the original player context when immediate placement is safe. For deferred startup or automatic staging, restore dimension, executor, position, rotation, and generation from the saved marker before issuing each command. Scheduled callbacks never implicitly preserve the player's context. A queued placement still needs its entire target area to become loaded.
6. In the loaded callback, schedule cleanup or advancement with `replace` after readiness is satisfied. A simple single-pass loader may refresh a short settle delay after each area loads. A staged installer must count all expected areas and advance only when all are ready, with a separate loading watchdog for partial failure. The settle delay gives queued placements time to finish; neither readiness nor elapsed time proves successful block placement.

Use this lifecycle when a name may already exist or is reused between stages:

1. In the public function, capture the snapped origin/facing and initialize the current installation generation. Clear this loader's pending callbacks and remove its stale areas.
2. Schedule the delayed lifecycle callback with `schedule delay add <remove_function> 2 replace` and return. Do not recreate removed names in this call.
3. In the delayed callback, verify the saved marker/generation, restore its context, create the origin and plot preloads, initialize the stage/readiness counters, and install the watchdog before registering loaded callbacks and issuing loads.
4. Once every plot area is ready, schedule the settle delay. Tidal Kingdom uses 600 ticks (30 seconds at 20 TPS); this is a measured reference, not a universal guarantee for every build or device.
5. To advance, snapshot the next action, remove the completed stage's plot areas, record a release/wait state, schedule the lifecycle callback two ticks later, and return. Create the next stage's areas and issue its loads only in that later invocation.
6. On final success or watchdog/anchor failure, cancel this loader's schedules, remove its areas and marker, clear owner tags and active state, and report the actual outcome. An abort does not roll back placed blocks.

Do not copy the old same-call `tickingarea remove <name>` followed by `tickingarea add ... <name> true` pattern. In a Bedrock Dedicated Server 1.26.52.3 negative control, a two-command function doing exactly this reported execution success, but the subsequent area list was empty. The replacement was lost because removal finalized after the function returned. Separate the calls with the two-tick barrier, including the initial recovery from a stale installation.

A world supports at most 10 command-created ticking areas, with at most 100 chunks in each area. Account for worst-case world-chunk alignment when checking a rectangular footprint. A conservative maximum chunk count for a `width` by `depth` block rectangle is `ceil((width + 15) / 16) * ceil((depth + 15) / 16)`. Keep each area as small as possible for performance and count every partition against the world limit. The 302 by 238 Skyline Colossus footprint requires four 151 by 119 quadrants; each can touch at most 11 by 9, or 99, chunks, so the loader temporarily consumes four ticking-area slots. A 460 by 313 footprint, such as Jungle Leviathan's, requires eight 115 by 157-or-156 rectangles; each can touch at most 9 by 11, or 99, chunks, so the loader temporarily consumes eight slots and leaves only two available for other systems.

Evaluate preload feasibility before interpreting requests such as "twice the size." Literal doubling of every horizontal dimension can exceed the ten-area ceiling even when every structure asset is valid: doubling Skyline Colossus to 604 by 476 has a conservative 39 by 31, or 1,209-chunk footprint, requiring at least 13 areas under the 100-chunk limit. For attractions, an ambiguous scale comparison defaults to a comparable feasible footprint, height, landmark ambition, and visual experience—not track length or occupied voxel count. Disclose the chosen physical interpretation in the public header and report its measured dimensions. Use track length, occupied voxels, or another exact-ratio target only when the user explicitly requests that metric. If the user explicitly requires doubled linear dimensions, do not silently reduce them—explain that a self-contained loader cannot preload the full footprint under Bedrock's limits and ask which tradeoff they want.

When a user explicitly requests an exact scale ratio across multiple metrics, validate and report every metric independently; do not infer one ratio from another. Track count and occupied-voxel count can change independently while the physical footprint remains fixed. Never use a densely serpentine, count-driven route as a layout template merely to satisfy those totals; preserve the theme-first principles and references above.

Different loaders with distinct ticking-area and callback names can run sequentially and can briefly overlap, subject to the 10-area limit and device performance. Do not invoke the same loader concurrently at different locations: its second invocation will reuse the same static name and can interrupt the first invocation's preload or cleanup. For reliable bulk use, wait until one placement and its cleanup complete before invoking that same loader again.

Validate that all callback and cleanup `.mcfunction` files contain only Bedrock commands and are included in the generated `.mcpack`. New callbacks use LF; preserve the existing line-ending style of older callbacks when editing them. Count their commands as part of the loader implementation. If ticking-area creation can fail because the world already uses all 10 slots, disclose that limitation in the handoff.

Official references:

- Ticking-area command and preload option: https://learn.microsoft.com/en-us/minecraft/creator/commands/commands/tickingarea?view=minecraft-bedrock-stable
- Area-loaded and delayed scheduling: https://learn.microsoft.com/en-us/minecraft/creator/commands/commands/schedule?view=minecraft-bedrock-stable
- Simulation distance and ticking-area limits: https://learn.microsoft.com/en-us/minecraft/creator/documents/simulationrenderdistanceguide?view=minecraft-bedrock-stable

### Automatic installer state and saved context

Use Tidal Kingdom's current lifecycle as the reference for deferred startup, automatic staging, and recovery, while retaining exactly one public entry point and two internal callbacks:

- `tools/tidal_kingdom_installer.py` generates all three functions; `tools/test_tidal_kingdom_installer.py` models the emitted commands and failure cases.
- Save the builder's dimension, centered feet position, cardinal yaw, and installation generation before returning from the public function. Restore them with an explicit chain such as `execute in overworld as <marker> if score @s <objective> = <generation_holder> <objective> at @s rotated as @s run ...`. Restrict an Overworld-only installer to the documented dimension; do not rely on callback spawn coordinates or the player's later position.
- A vanilla armor stand is a workable persistent marker when supported, tagged/named uniquely, and associated with the current generation. It has gravity. Keep its original ground intact, protect it as appropriate, and use narrowly scoped cleanup selectors. Do not globally kill item drops to hide marker cleanup.
- Preload the marker's origin independently of the plot stages. Tidal Kingdom uses `tickingarea add circle <origin> 1 <origin_name> true`, conservatively at most nine chunks, and one area slot. Include this slot in peak usage: eight plot areas plus one origin area means nine free slots, not eight. Do not assume the marker remains selectable after its chunk unloads.
- Keep the active flag, stage, readiness, generation, revision, and next-action counters distinct. Initialize a new stage before registering its callbacks. Count callbacks only in the corresponding loading states; ignore them in startup/release states.
- Snapshot the next action before changing stage/readiness. Several conditional commands in one function must not cascade through multiple stages in one invocation.
- Arm a per-stage watchdog before registering readiness callbacks. Advance only after every expected area reports ready and the settle period expires. Missing slots, a missing marker, an old marker generation, or partial readiness must produce failure and cleanup, never a completion message or placement at server origin.
- Repeated calls while active must report busy without replacing the saved origin or resetting progress. A revised installer must recover stale state from older versions once, then restore the normal busy guard. Clear legacy schedules, tags, and owned area names deliberately.
- Use plain score-holder literals such as `tki_active`, matching `[A-Za-z_][A-Za-z0-9_]*`. Unquoted hash-prefixed holders such as `#active`, `#ready`, and `#next` caused `Unexpected "#"` parse errors in Bedrock `execute if/unless score`, even where scoreboard string arguments accept such names. Validate every operand, including both sides of comparisons and branches that are not selected at runtime.
- Initialize revision/default counters before conditions. `scoreboard players add <holder> <objective> 0` creates an absent entry while preserving an existing value. Treat an absent score as uninitialized; do not rely on an `unless score` condition as a substitute for initialization. A simulator must model missing-score behavior explicitly.
- A simulator must model ticking-area removals as pending until the function returns. It must not immediately free and recreate an area in one invocation. Add regressions for the actual engine failure, not just the intended state diagram.

Keep the one-call workflow when requested. Do not silently fall back to asking the player to run the function twice or invoke an internal callback.

### Validate structures

For every generated `.mcstructure`:

1. Parse the file back as little-endian NBT.
2. Confirm the parser consumes the entire file.
3. Confirm root type, empty root name, format version, dimensions, and dimension limits.
4. Confirm both block-index layers have exactly `sizeX * sizeY * sizeZ` entries.
5. Confirm every first-layer value is `-1` or a valid palette index.
6. Confirm the secondary layer contains only the intended values.
7. Confirm all palette names are Bedrock block identifiers.
8. Count occupied cells in every chunk and compare their sum with the source voxel set.
9. Build a temporary archive and confirm the namespaced structure files, public loader, and both underscore-prefixed callbacks are present.

## Common validation checklist

Run these checks for every changed or new build, regardless of representation:

1. Inspect every changed function from beginning to end; do not validate only a generated excerpt.
2. Count every nonblank, noncomment command and confirm each public function is at or below 10,000 commands.
3. Parse `fill` and `setblock` coordinates, compute the actual occupied bounds, and compare them with the header. Account separately for commands inside repositioned `execute` contexts.
4. Check every `fill` volume against Bedrock's current fill limit and make sure coordinate ordering does not accidentally create an oversized region.
5. Inventory command verbs, block identifiers, entity identifiers, sounds, selectors, block states, and command options. Verify uncertain syntax against current official Bedrock documentation.
6. Confirm commands have no leading slash, no trailing whitespace, no omission markers, no prose outside comments, and no blank lines after the final line.
7. Check that placement order does not destroy earlier detail and that liquids, rails, gravity-affected blocks, and entities have the support or containment they require.
8. For structure-backed builds, validate all NBT assets, rotation mappings, callbacks, ticking-area bounds, and namespace/path references as described above.
9. Confirm line endings: preserve the existing style for edited or renamed files, use LF for new `.mcfunction` files, and keep CRLF for the current root Markdown and batch files.
10. Run `git diff --check`, inspect `git diff --stat`, and review the complete diff for accidental edits or line-ending-only churn.

If Minecraft is available, test the public function in a disposable Bedrock world while facing each supported cardinal direction. Static analysis does not replace an in-game check for rail shapes, fluid flow, block-state behavior, entity spawning, or structure rotation.

## Real-engine validation and silent-installation diagnostics

A clean content log, successful function registration, or `Successfully executed N function entries` is **not placement verification**. Calling a player-only function from the server console without an executor can execute entries while every `@s` branch does nothing. Likewise, all ticking areas can report ready while every structure request fails its Y bounds.

When a loader is added or changed, especially after a reported empty installation:

1. Inspect the newest client content log and the failing world's actual metadata/state. On this Windows setup, logs are under `%APPDATA%\Minecraft Bedrock\logs\ContentLog*.txt`; installed packs can be under `%APPDATA%\Minecraft Bedrock\Users\Shared\games\com.mojang\behavior_packs`, and worlds under `%APPDATA%\Minecraft Bedrock\Users\<user-id>\games\com.mojang\minecraftWorlds`. Legacy installs may use `%LOCALAPPDATA%\Packages\MICROSOFT.MINECRAFTUWP_8wekyb3d8bbwe\LocalState`. Discover existing paths rather than hard-coding an account ID. Content logs often show parse failures but omit runtime command failures; a quiet log does not clear the installer.
2. Check the active world pack UUID/version, installed copies, manifest minimum engine version, cheats, `functioncommandlimit`, origin/dimension, marker, score counters, area count, and stage readiness. Multiple imported versions can coexist. Confirm the world actually activates the rebuilt version before blaming generation or rerunning old code.
3. Reproduce on a disposable world or an isolated copy of the failing world. Keep the user's original world untouched during diagnosis. Test both a fresh install and recovery from the old failed state; a clean high-altitude world misses low-Y and stale-area failures. Do not silently reset unrelated world systems.
4. Trace uncertain command behavior directly with engine console output or a minimal negative control. In particular, reproduce the original syntax failure, world-height rejection, or same-call area-reuse failure before asserting a root cause. Do not record discarded debugging hypotheses as established engine behavior.
5. Test the real player entry point when a client is available. For headless validation, a clearly documented test-only entity driver may substitute for the player guard, with the production stage commands/timers/assets retained. Never ship the relaxed guard or audit fixtures. A headless test does not establish interactive player, minecart, fluid, or all-version compatibility.
6. Verify blocks at known coordinates/materials in **every structure region and every stage**, while those regions are still loaded. Choose samples absent from the untouched world, and perform audits before stage-area removal. A sample in one corner cannot establish an entire staged installation. Report whether checks sample regions or compare every voxel.
7. Verify automatic advancement, readiness barriers, busy reentry, stale-version recovery, missing-area timeout, missing/old marker failure, and final cleanup. On success require all stages, inactive state, no owned ticking areas, and no remaining marker. Reload the origin for a deletion check so an unloaded marker is not mistaken for a deleted marker. Test movement/turning after startup and each cardinal facing where possible; disclose which checks are simulated versus real-engine checks.
8. Save a concise report with exact engine/pack versions, production function hashes, harness changes, placement height, stage/sample results, and cleanup evidence. Reports describe the tested bytes and must not be silently reused after behavior changes. Do not claim a fix is ready based only on static tests or entry counts after the user reports continued failure.

Confirmed Tidal Kingdom evidence and regression references:

- `docs/tidal_kingdom/bedrock_syntax_check.json`: v1.0.30 parser validation and the hash-holder negative control; it was not a full installation test.
- `docs/tidal_kingdom/bedrock_runtime_check.json`: v1.0.31 on Bedrock Dedicated Server 1.26.52.3, feet Y -60, recovery from an active failed run with nine stale areas, both stages, one verified block sample in each of 80 regions, zero remaining areas, and marker removal. The headless run took about 73 seconds; do not promise that duration on every device.
- `python -m unittest discover -s tools -p test_tidal_kingdom_installer.py -v`: emitted-command regressions, including deferred area removal, Classic Flat placement, initialized defaults, busy recovery, and failure cleanup.

When running Python tools, set `$env:PYTHONDONTWRITEBYTECODE='1'` where appropriate to avoid unrelated tracked `tools/__pycache__` changes. Review diffs and never restore pre-existing user changes merely to make the worktree look clean.

## Packaging and handoff

Keep `build_ai_minecraft_pack.bat` and `README.md` accurate whenever the pack layout or user workflow changes. Preserve their CRLF endings.

- When preparing changed pack contents for reimport, increment the manifest version and keep `header.version` and `modules[0].version` identical. Preserve the existing UUIDs unless intentionally creating a separate pack identity. Tell the user to import and activate that exact updated version and close/reopen the world so functions reload; importing an archive alone does not prove the active world has switched versions.
- Treat `src/` as the package source of truth. Do not hand-edit generated `.mcpack` files. Keep the root `ai-minecraft-builds.mcpack` as the complete debug pack and generate exactly one `packs/<public_function_name>.mcpack` for each numbered public entry point. Discover builds automatically; do not maintain a hard-coded catalog in the packager.
- Each individual archive must contain exactly one numbered public entry point, its recursively referenced underscore-prefixed functions (including scheduled callbacks and delayed cleanup), and only the namespaced structures those functions load. Keep original function names, structure namespaces, relative archive paths, and source file bytes. Standalone builds do not need a `structures/` directory. Reject missing dependencies, duplicate public numbers, cross-build public-function calls, and unsupported scheduling forms before replacing any output. Update dependency discovery when introducing a new scheduling command form.
- Generate each individual manifest from `src/manifest.json`, retaining the engine requirement and matching header/module versions. Give each build a descriptive pack name and unique header/module UUIDs, distinct from the debug pack and other builds. `tools/package_builds.ps1` derives UUIDv5 identities from the source UUIDs and permanent build number; keep that derivation stable across rebuilds and renames. Do not generate random identities on each run. See the [official manifest reference](https://learn.microsoft.com/en-us/minecraft/creator/reference/content/addonsreference/packmanifest?view=minecraft-bedrock-stable).
- Run the Windows packager during validation. Inspect the full debug archive and every individual build archive: `manifest.json` and `functions/` must be at the root, with `structures/` when required and no extra `src/` directory. Confirm dependency completeness, exactly one public entry point in each individual pack, unique stable UUIDs, and version parity.
- When inspecting archive entry names on Windows, normalize `\` to `/` before comparing paths. The packager writes forward-slash paths.
- Confirm every new public function, internal callback, and namespaced structure asset is present in both the full debug archive and its individual build archive. Source models, tools, and `docs/` media must remain outside them.
- The packager replaces generated `.mcpack` files only after each new archive closes successfully and removes obsolete numbered archives from `packs/` after all current packs succeed. This folder is reserved for generated build packs. Preserve unrelated files; do not run the packager if overwriting a user's uncommitted generated archive would be surprising.

Tell the user:

- The function name to run.
- Where to stand and how to face.
- Build dimensions, placement origin, required clearance, and forward offset when applicable.
- Block and command counts.
- Whether the implementation is a normal function or structure-backed loader.
- The individual pack path under `packs/`; the root pack is the complete debug alternative.
- That they must rebuild and reimport the relevant `.mcpack` after changing any packaged function, structure, or manifest content.
- That large builds should be tested in a disposable world or after making a backup.
