# AGENTS.md

## Scope

These instructions apply to the entire repository.

This repository collects AI-generated Minecraft Bedrock build blueprints. Most public builds are standalone `.mcfunction` files authored from natural-language prompts; imported 3D assets may instead be voxelized into functions or native `.mcstructure` files. Every addition must remain Bedrock-compatible, preserve the intended design or recognizable source geometry, and package cleanly with the existing Windows build script.

## Repository map and conventions

- `README.md` is the user-facing overview, placement guidance, and packaging documentation.
- `src/manifest.json` defines a behavior pack for Minecraft Bedrock 1.21 or newer. Keep the header and data-module versions identical.
- `src/functions/` contains all callable functions and internal callbacks. Public function filenames use lowercase snake case and are invoked without the extension, for example `/function theme_park_ferris_wheel`.
- Most `theme_park_*.mcfunction` files are standalone generated builds. They establish the current conventions for section comments, caret-relative placement, large foundations, decorative detail, and optional start/completion messages.
- `src/structures/ai_minecraft_builds/` is the behavior-pack structure namespace. The folder name and identifiers used by `structure load` must agree.
- Imported source models are optional working inputs and may not be committed after conversion. Record their filenames and relevant metadata in the generated build header; source assets outside `src/` and media under `docs/` are not included by the packager.
- `build_ai_minecraft_pack.bat` packages only `src/manifest.json`, `src/functions`, and `src/structures` into the repository-root `ai-minecraft-builds.mcpack`.

Files whose names begin with `_` are internal implementation details, not public entry points. Every public build should have one obvious function name for the player to run.

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

The pack currently declares Minecraft Bedrock 1.21 or newer in `src/manifest.json`.

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
2. Choose a unique lowercase snake-case filename and confirm it does not collide with a public function, internal callback, structure identifier, or ticking-area name.
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

- Loader: `src/functions/theme_park_jungle_leviathan_roller_coaster.mcfunction`
- Callbacks: `src/functions/_theme_park_jungle_leviathan_roller_coaster_tickingarea_loaded.mcfunction` and `src/functions/_theme_park_jungle_leviathan_roller_coaster_remove_tickingarea.mcfunction`
- Assets: `src/structures/ai_minecraft_builds/theme_park_jungle_leviathan_roller_coaster_x*_z*.mcstructure`
- Generator and validator: `tools/generate_jungle_leviathan.py`

For a theme-first coaster, treat the physical envelope as room for broad runs, open scenic courts, repeated elevation reversals, and landmark-framing bends rather than as a mandate for raw track length. Keep those goals explicit in the generator and validate them in its reported design metrics and route projection.

### Required three-function loader convention

Every build large enough to require `.mcstructure` assets must use exactly three `.mcfunction` files for its loader lifecycle:

1. `<build_name>.mcfunction`: the only public entry point. It runs in the player's context, manages stale state and the temporary ticking area or areas, registers the area-loaded callback, and issues all cardinally selected `structure load` commands.
2. `_<build_name>_tickingarea_loaded.mcfunction`: an internal callback registered with `schedule on_area_loaded`. It schedules the delayed cleanup and does not place structures.
3. `_<build_name>_remove_tickingarea.mcfunction`: an internal delayed callback that removes only this build's ticking area or areas.

Both internal callback filenames and all command references to them must begin with `_`. Start each internal file with an `INTERNAL CALLBACK - do not run manually` comment. Do not create unprefixed callback aliases, combine the lifecycle into the public loader, or require the player to invoke either callback. Use unique callback paths and a unique ticking-area name for every build.

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

The packaging script must include both `src/functions` and `src/structures`.

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
2. In the player-executed wrapper, clear any stale callback for that loader and remove only its own stale ticking areas.
3. Prefer one preloaded rectangular ticking area whose caret-relative corners cover the complete horizontal build footprint: `tickingarea add <from> <to> <unique_name> true`. If the conservative footprint exceeds 100 chunks, partition it into the fewest nonoverlapping rectangles that each remain at or below 100 chunks and give every rectangle a unique name.
4. Register the same loaded callback for every rectangle with `schedule on_area_loaded add tickingarea <unique_name> <loaded_callback>`.
5. Issue the cardinally selected `structure load` commands immediately in the original player context. They may queue briefly, but the ticking area will cause their target chunks to load. Do not move placement into the scheduled callback, because a scheduled function does not preserve the player's original position and rotation.
6. In the loaded callback, schedule a short delayed cleanup with `replace`, such as `schedule delay add <remove_function> 100 replace`. With multiple areas, every area-loaded invocation refreshes the same delayed cleanup, so removal occurs after the final rectangle becomes ready. The cleanup function must remove every name owned by this loader and no others. The delay gives queued placements time to finish after the area becomes fully loaded.

Use this command lifecycle as the reference pattern:

```mcfunction
schedule on_area_loaded clear function _<build_name>_tickingarea_loaded
tickingarea remove <unique_name>
tickingarea add <from> <to> <unique_name> true
schedule on_area_loaded add tickingarea <unique_name> _<build_name>_tickingarea_loaded
# Player-relative, cardinally selected structure load commands follow here.
```

`_<build_name>_tickingarea_loaded.mcfunction` contains:

```mcfunction
schedule delay add _<build_name>_remove_tickingarea 100 replace
```

`_<build_name>_remove_tickingarea.mcfunction` contains:

```mcfunction
tickingarea remove <unique_name>
```

A world supports at most 10 command-created ticking areas, with at most 100 chunks in each area. Account for worst-case world-chunk alignment when checking a rectangular footprint. A conservative maximum chunk count for a `width` by `depth` block rectangle is `ceil((width + 15) / 16) * ceil((depth + 15) / 16)`. Keep each area as small as possible for performance and count every partition against the world limit. The 302 by 238 Skyline Colossus footprint requires four 151 by 119 quadrants; each can touch at most 11 by 9, or 99, chunks, so the loader temporarily consumes four ticking-area slots. A 460 by 313 footprint, such as Jungle Leviathan's, requires eight 115 by 157-or-156 rectangles; each can touch at most 9 by 11, or 99, chunks, so the loader temporarily consumes eight slots and leaves only two available for other systems.

Evaluate preload feasibility before interpreting requests such as "twice the size." Literal doubling of every horizontal dimension can exceed the ten-area ceiling even when every structure asset is valid: doubling Skyline Colossus to 604 by 476 has a conservative 39 by 31, or 1,209-chunk footprint, requiring at least 13 areas under the 100-chunk limit. For attractions, an ambiguous scale comparison defaults to a comparable feasible footprint, height, landmark ambition, and visual experience—not track length or occupied voxel count. Disclose the chosen physical interpretation in the public header and report its measured dimensions. Use track length, occupied voxels, or another exact-ratio target only when the user explicitly requests that metric. If the user explicitly requires doubled linear dimensions, do not silently reduce them—explain that a self-contained loader cannot preload the full footprint under Bedrock's limits and ask which tradeoff they want.

When a user explicitly requests an exact scale ratio across multiple metrics, validate and report every metric independently; do not infer one ratio from another. Track count and occupied-voxel count can change independently while the physical footprint remains fixed. Never use a densely serpentine, count-driven route as a layout template merely to satisfy those totals; preserve the theme-first principles and references above.

Different loaders with distinct ticking-area and callback names can run sequentially and can briefly overlap, subject to the 10-area limit and device performance. Do not invoke the same loader concurrently at different locations: its second invocation will reuse the same static name and can interrupt the first invocation's preload or cleanup. For reliable bulk use, wait until one placement and its cleanup complete before invoking that same loader again.

Validate that all callback and cleanup `.mcfunction` files contain only Bedrock commands and are included in the generated `.mcpack`. New callbacks use LF; preserve the existing line-ending style of older callbacks when editing them. Count their commands as part of the loader implementation. If ticking-area creation can fail because the world already uses all 10 slots, disclose that limitation in the handoff.

Official references:

- Ticking-area command and preload option: https://learn.microsoft.com/en-us/minecraft/creator/commands/commands/tickingarea?view=minecraft-bedrock-stable
- Area-loaded and delayed scheduling: https://learn.microsoft.com/en-us/minecraft/creator/commands/commands/schedule?view=minecraft-bedrock-stable
- Simulation distance and ticking-area limits: https://learn.microsoft.com/en-us/minecraft/creator/documents/simulationrenderdistanceguide?view=minecraft-bedrock-stable

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
9. Confirm line endings: LF for every `.mcfunction`, the pre-existing style for edited JSON, and CRLF for the current root Markdown and batch files.
10. Run `git diff --check`, inspect `git diff --stat`, and review the complete diff for accidental edits or line-ending-only churn.

If Minecraft is available, test the public function in a disposable Bedrock world while facing each supported cardinal direction. Static analysis does not replace an in-game check for rail shapes, fluid flow, block-state behavior, entity spawning, or structure rotation.

## Packaging and handoff

Keep `build_ai_minecraft_pack.bat` and `README.md` accurate whenever the pack layout or user workflow changes. Preserve their CRLF endings.

- When preparing changed pack contents for reimport, increment the manifest version and keep `header.version` and `modules[0].version` identical. Preserve the existing UUIDs unless intentionally creating a separate pack identity.
- Treat `src/` as the package source of truth. Do not hand-edit the generated `.mcpack`.
- Run the Windows packager or create an equivalent temporary ZIP during validation. Confirm the archive root contains `manifest.json`, `functions/`, and `structures/`, not an extra `src/` directory.
- When inspecting archive entry names on Windows, normalize `\` to `/` before comparing paths. Windows PowerShell's `Compress-Archive` may store directory separators as backslashes even though other ZIP writers and readers expose forward slashes.
- Confirm every new public function, internal callback, and namespaced structure asset is present in the archive. Source models and `docs/` media must remain outside it.
- The packager deletes and recreates `ai-minecraft-builds.zip` and `ai-minecraft-builds.mcpack`; do not run it if overwriting a user's uncommitted generated archive would be surprising.

Tell the user:

- The function name to run.
- Where to stand and how to face.
- Build dimensions, placement origin, required clearance, and forward offset when applicable.
- Block and command counts.
- Whether the implementation is a normal function or structure-backed loader.
- That they must rebuild and reimport the `.mcpack` after changing any packaged function, structure, or manifest content.
- That large builds should be tested in a disposable world or after making a backup.
