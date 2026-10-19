# AI Minecraft Builds

Large language models can generate Minecraft scripts that act as blueprints for buildings and other structures. Describe what you want, ask an LLM for an `.mcfunction` file, and run that function in Minecraft to place the build block by block.

This repository is a collection of those generated blueprints, along with a packaging script that creates individual build packs and a complete debug pack Minecraft can import.

<p align="center">
  <img src="docs/demo1.gif" alt="First looping demo of a generated Minecraft build">
</p>

<p align="center">
  <img src="docs/demo2.gif" alt="Second looping demo of a generated Minecraft build">
</p>

## Example prompt

> build a mcfunction bedrock file for minecraft. make sure to only use bedrock resources. use caret/relative coordinates. commands should build a large, detailed park attraction - roller coaster

## How it works

Minecraft function files are plain-text lists of commands. An LLM can translate a natural-language description into commands such as `fill` and `setblock`, using caret coordinates (`^`) so every block is positioned relative to the player. The result is portable source code for a build: a readable, editable blueprint that Minecraft can execute.

## Build functions

Public build functions use `<number>_<name>`, with one unique number per build. Type `/function 1_` to narrow suggestions to the first build, or use any other number below. Internal `_` callbacks are scheduled automatically.

Numbers follow creation order in Git history, including the original `functions/` directory; builds first recorded in the same commit are ordered alphabetically. Existing numbers stay fixed. The retained branch history assigns builds 1 through 17; Tidal Kingdom is build 18, A.D. 2044 is build 19, pink plush bird is build 20, and the next new build will be 21.

| Number | Command |
| --- | --- |
| 1 | `/function 1_theme_park_aztec_temple_attraction` |
| 2 | `/function 2_theme_park_ferris_wheel` |
| 3 | `/function 3_theme_park_pirate_cove_attraction` |
| 4 | `/function 4_theme_park_teacups_attraction` |
| 5 | `/function 5_theme_park_viking_rocking_ship` |
| 6 | `/function 6_theme_park_water_slide` |
| 7 | `/function 7_theme_park_waterfall_cove` |
| 8 | `/function 8_theme_park_aurora_velocity_roller_coaster` |
| 9 | `/function 9_theme_park_crimson_comet_roller_coaster` |
| 10 | `/function 10_theme_park_skyline_cyclone_roller_coaster` |
| 11 | `/function 11_theme_park_skyline_colossus_roller_coaster` |
| 12 | `/function 12_theme_park_jungle_leviathan_roller_coaster` |
| 13 | `/function 13_theme_park_infernal_rift_roller_coaster` |
| 14 | `/function 14_theme_park_space_adventure_roller_coaster` |
| 15 | `/function 15_theme_park_pharaohs_curse_roller_coaster` |
| 16 | `/function 16_theme_park_themed_haunted_house` |
| 17 | `/function 17_theme_park_haunted_house_roller_coaster` |
| 18 | `/function 18_theme_park_tidal_kingdom` |
| 19 | `/function 19_ad2044` |
| 20 | `/function 20_pink_plush_bird` |

After updating an existing installation, rebuild and reimport the pack to get these numbered commands.

## Huge structure-based roller coasters

The pack includes large, functional roller coasters whose size exceeds Bedrock's 10,000-command function limit. Sparse native `.mcstructure` assets and small loader functions preserve the open spaces between the track and scenery. Jungle Leviathan and Infernal Rift each use 40 assets; Space Adventure and Pharaoh's Curse each use 30.

### Jungle Leviathan

<p align="center">
  <img src="docs/jungle.jpg" alt="Jungle Leviathan roller coaster winding through a forest of giant trees">
</p>

Jungle Leviathan fills a 460 x 313 x 240-block site with 2,320 connected rails, a temple station, river, stepped ruin, waterfalls, and a giant canopy tree. Build it with `/function 12_theme_park_jungle_leviathan_roller_coaster`, then place a minecart on the station track.

### Infernal Rift

<p align="center">
  <img src="docs/nether.jpg" alt="Infernal Rift roller coaster climbing above lava and basalt spires">
</p>

Infernal Rift is a 460 x 313 x 256-block Nether-themed ride with 4,640 connected rails winding around a bastion station, lava sea, portal cathedral, wither gate, and basalt spires. Build it with `/function 13_theme_park_infernal_rift_roller_coaster`, then place a minecart on the station track.

For either coaster, stand at ground level at the front-center of a clear site, face a cardinal direction, and look horizontally. The nearest blocks begin 48 blocks ahead. Use a disposable world or make a backup: each loader overwrites a huge area and temporarily uses eight of the world's ten command-created ticking areas while its structures load. These areas are removed automatically after placement; wait for one placement to finish before running the same loader again.

### Space Adventure: Odyssey

<p align="center">
  <img src="docs/space_adventure/overview.png" alt="Space Adventure: actual generated voxel preview with a ringed planet, launch rocket, jump gate, and elevated coaster">
</p>

Space Adventure takes a continuous minecart circuit from a launch terminal through illuminated ascent hoops, past a lunar crater and orbital outpost, beneath the rings of Aurelia, and through a glowing jump gate. The 352 x 272 x 169-block site has 30 curves, five major climbs, six major drops, a 142-block rail summit, and a separated crossing. The rocket, spacecraft, and planetary scenery are static.

Run `/function 14_theme_park_space_adventure_roller_coaster` from ground level at the front-center observation point, facing a cardinal direction with a horizontal view. The nearest blocks begin 32 blocks ahead; reserve a clear flat site spanning `^-175 ^-1 ^32` through `^176 ^167 ^303`, with your feet at Overworld Y -63 through 152. Follow the lit path to the terminal stairs, place a minecart on the flat station track, and push toward the long lift.

This build places 248,911 non-air blocks and clears 21,828 passenger-corridor cells using 30 structures, a 172-command public loader, and two internal callbacks containing six commands. It needs five free ticking-area slots, released automatically after loading. Back up first or use a disposable world, and wait for placement and cleanup before rerunning it. Rebuild and reimport the pack after changing its source files. See the [route plan, elevation profile, exact metrics, and regeneration instructions](docs/space_adventure/README.md). The image above is a voxel preview, not an in-game screenshot.

### Pharaoh's Curse: The Awakening

<p align="center">
  <img src="docs/pharaohs_curse/overview.png" alt="Pharaoh's Curse generated voxel preview: a golden pyramid, sphinx, cobra gate, palm oasis, and sweeping minecart track">
</p>

Pharaoh's Curse climbs above a sphinx and obelisk court, drops 82 blocks beside a gold-capped pyramid, and enters its enclosed burial chamber. Glowing-eyed mummy sculptures guard a royal sarcophagus. The escape rises past the queens' tombs, descends through a giant cobra gate, and returns past the oasis to a columned sun temple. The continuous 1,620-rail circuit has 28 curves, four major climbs, three major drops, and an 11-block-separated crossing. All figures and curse effects are static scenery.

Run `/function 15_theme_park_pharaohs_curse_roller_coaster` from ground level at the front-center observation point, facing a cardinal direction with a horizontal view. Reserve a clear, flat **352 x 272 x 101-block** site from `^-175 ^-1 ^32` through `^176 ^99 ^303`; the nearest blocks begin 32 blocks ahead. Stand with your feet at Overworld Y -63 through 220. Follow the guardian avenue and the path to the temple stairs, place a minecart on the station rails, and push toward the lift.

The build places **383,066 non-air blocks** and 121,070 explicit air cells through 30 structures, a 172-command public loader, and six internal callback commands. It needs five free ticking-area slots, released automatically after loading. Back up first or use a disposable world. Rebuild and reimport the pack after source changes, and wait for placement and cleanup before rerunning this loader. The preview shows generated blocks, not an in-game screenshot; in-game testing remains outstanding. See the [route, crypt cutaway, measured dimensions, validation, and regeneration instructions](docs/pharaohs_curse/README.md).

## Raven Manor: The Widow's Plunge

A haunted-house minecart coaster at **Pharaoh's Curse's physical scale: 352 x 272 x 101 blocks**. Its four-clock-tower mansion, ancestor crypt, mirror gallery, giant skull gate, mausoleum, spectral memorial, twisted forest, and ghost lagoon frame a continuous route with 22 curves, four major climbs, three major drops, an 80-block plunge, and an 18-block-separated crossing. Haunted figures, raven, and clock hands are static scenery.

<p align="center">
  <img src="docs/haunted_house_coaster/overview.png" alt="Raven Manor at Pharaoh's Curse's scale: a grand four-tower gothic mansion, giant skull gate, ghost gardens, and elevated coaster">
</p>

Run `/function 17_theme_park_haunted_house_roller_coaster` at ground level from the front-center observation point, facing a cardinal direction with a horizontal view. Choose a new clear, flat **352 x 272 x 101-block site**, from `^-175 ^-1 ^32` through `^176 ^99 ^303`; nearest blocks begin **32 blocks ahead**. Stand with your feet at Overworld Y **-63 through 220**. The loader preloads the whole site and needs **five free ticking-area slots**. Follow the right path and eighteen half-block steps to the carriage-house platform, place a minecart on the adjacent flat rail, enter it, and push left toward the ascent.

The build places **386,757 non-air blocks** and 1,111,522 explicit air cells through **30 native structures**, a **174-command public loader**, and six callback commands. Its 1,724 rails reach heights 9 through 93. The scale comparison means the physical envelope and landmark ambition; the route was designed around its haunted scenes. Back up first or use a disposable world. Wait for queued placement and cleanup before rerunning the loader, and rebuild/reimport after source changes. In-game testing remains outstanding; the image is a generated-block preview. See the [route, elevation profile, crypt cutaway, metrics, and regeneration instructions](docs/haunted_house_coaster/README.md).

## Themed Haunted House / Grand Estate

A vast walk-through gothic mansion with **42 furnished main rooms**, six attic spaces, six crypt vaults, twelve accessible tower rooms, and haunted gardens. Three main floors plus the crypt and attic form five connected guest levels. Explore ballrooms, libraries, theaters, laboratories, bedchambers, mirror halls, and observatories. Broad half-block stairs connect the floors; all **76 named destinations and 112 stair treads** pass the walking validator. Scenery and clock-tower belfries are static.

<p align="center">
  <img src="docs/themed_haunted_house/overview.png" alt="Themed Haunted House Grand Estate: a sprawling gothic mansion with four clock towers, six projecting wing sections, a cemetery, and gardens">
</p>

Run `/function 16_theme_park_themed_haunted_house` at ground level from the front-center observation point, facing a cardinal direction with a horizontal view. Reserve a clear flat **225 x 239 x 98-block site**, from `^-112 ^-1 ^24` through `^112 ^96 ^262`; the nearest blocks start **24 blocks ahead**. Stand with your feet at Overworld Y **-63 through 223**. Climb the new terrace entrance stairs, then follow the path to the porch steps. This estate covers about **10.7 times the original haunted house footprint**.

The build places **680,192 non-air blocks** and 905,324 explicit air cells through **16 native structures**. Its best tested exact cuboid encoding needs **29,980 solid-placement commands**, exceeding the standalone limit. The public loader uses **97 commands**, with four commands across its two internal callbacks. It needs **three free ticking-area slots**, released automatically after loading. Back up first or use a disposable world; the crypt sits inside the raised terrace, so default flat-world ground is supported. Wait for placement and cleanup before rerunning it, and rebuild/reimport the pack after source changes. In-game testing remains outstanding. See the [floor plans, cutaways, metrics, and regeneration instructions](docs/themed_haunted_house/README.md).

## Tidal Kingdom: full water park

A **640 x 450-block plot**, almost exactly **twice Infernal Rift's plot area**, with **one roller coaster**. Tidal Kingdom includes four water slides, a swimming river, central lagoon, Poseidon temple aquarium, beach basin, pirate galleon, splash fort, climbable lighthouse, guest services, changing rooms, market and cabanas. The water and scenery have ordinary static Minecraft behavior; the beach basin does not generate waves.

<p align="center">
  <img src="docs/tidal_kingdom/overview.png" alt="Tidal Kingdom generated blocks: lagoon and aquarium temple, four slides, pirate harbor, lighthouse, and one supported coaster">
</p>

Import `packs/18_theme_park_tidal_kingdom.mcpack`, then run `/function 18_theme_park_tidal_kingdom` **once**, facing a cardinal direction with a horizontal view. Both stages and final cleanup are automatic. A temporary anchor saves your starting position and facing, so you may move after starting; keep the world running and leave the original ground/anchor intact until the completion message. The installer needs **nine free ticking-area slots**: eight for the current stage and one for its saved origin. Each stage waits for all eight areas to load, then allows **600 game ticks** for queued placement before advancing. A two-tick delay lets area removal finish before their names are reused.

Stand at ground level at the front-center observation point, **32 blocks before the build**, with feet at Overworld **Y -60 through 205**. Reserve a clear flat **640 x 450 x 119-block envelope**, from `^-319 ^-4 ^32` through `^320 ^114 ^481`; the basins extend four blocks below your feet. The deck is raised one block to fit default flat-world ground. Back up first or use a disposable world. Do not run concurrent installations.

The park places **1,208,281 non-air blocks** and 2,560,217 explicit air cells through **80 structures**, a **41-command public loader** and 494 callback commands. Its single 1,632-rail Tidebreaker circuit has 14 curves, six major climbs, four major drops and an 85-block largest drop. Follow the paths to its rear-left station, board beside `^194 ^9 ^406`, and push toward positive local left. Geometry, walking access, all cardinal placements, NBT and pinned Bedrock block states have been checked. The automatic installer passed a headless Bedrock test on Classic Flat ground; **interactive ride playtesting remains outstanding**. Rebuild and reimport after source changes. See the [installation instructions, attraction plan, route, metrics and regeneration guide](docs/tidal_kingdom/README.md).

## A.D. 2044: imported game box

A **295 wide x 87 deep x 360 high** static sculpture converted from `glb/ad2044.glb`. The photographed front, back, side lettering, worn edges and damaged cardboard are mapped to 39 vanilla block colors. Its 321,519 surface blocks surround an unfilled interior.

<p align="center">
  <img src="docs/ad2044/overview.png" alt="Generated Minecraft block preview of the A.D. 2044 game box, showing its front artwork and printed side">
</p>

Import and activate **`packs/19_ad2044.mcpack` version 1.0.32**, close/reopen the world, then run `/function 19_ad2044` once. Stand at ground level in the Overworld, facing a cardinal direction with a horizontal view, with feet at **Y -63 through -42**. Classic Flat ground at Y -60 works. The front-center observation origin is **32 blocks before the nearest surface**. Reserve `^-147 ^1 ^32` through `^147 ^360 ^118`; the lowest surface is one block above your feet. Back up first or use a disposable world.

Twenty sparse native structures are placed by a **39-command public loader and 198 callback commands**. Keep **three ticking-area slots free** and leave the saved origin/ground intact until completion. You may move after starting. Both plot areas must report loaded, followed by a 600-tick settle period and 60 block checks covering every asset. Temporary areas and the marker are removed automatically. A headless Bedrock 1.26.52.3 test at feet Y -60 verified all four facings, sample blocks in all 20 assets, busy reentry, failure cleanup and stale-area recovery; interactive player testing remains outstanding. The preview shows generated blocks. See the [placement, conversion details and validation report](docs/ad2044/README.md). Rebuild and reimport after changing packaged sources.

## Pink plush bird

Plush sculpture from `glb/pink_plush_bird.glb`: rounded white fleece, a pink face, purple eye rims, bright eye catchlights and hidden fill lighting beneath the head and around the body. Its proportions, wings, tail, webbed feet and care label follow the source model. The build contains **371,768 visible blocks and 18,806 invisible lights**; it places no explicit air blocks.

<p align="center">
  <img src="docs/pink_plush_bird/overview.png" alt="Generated Minecraft block preview of the plush bird, with a pink face, white fleece and bright eye highlights">
</p>

Import and activate **`packs/20_pink_plush_bird.mcpack` pack version 1.0.35**, close/reopen the world, then run `/function 20_pink_plush_bird` once. Stand at ground level in the Overworld, facing a cardinal direction with a horizontal view, at feet **Y -63 through -42**; Classic Flat Y -60 works. The front-center observation point is **32 blocks before the nearest block**. Reserve a clear **250 x 178 x 359-block** site, from `^-124 ^2 ^32` through `^125 ^360 ^209`. Back up first or use a disposable world.

The loader uses **24 structures, 40 public commands and 235 callback commands**, with **four free ticking-area slots** required. Leave the saved origin/ground intact until cleanup. It waits for all areas, settles for 600 ticks and checks 72 placed block samples. See the [placement bounds, conversion details, projections, exact metrics and runtime validation](docs/pink_plush_bird/README.md). Rebuild and reimport after packaged source changes.

## Placement and compatibility details

- Pack version 1.0.35 requires Bedrock 1.21.50 or newer. Its structure loaders use delayed scheduling, introduced in the [1.21.50 release](https://feedback.minecraft.net/hc/en-us/articles/32344904160397-Minecraft-Bedrock-Edition-1-21-50-The-Garden-Awakens).
- Public build functions automatically move the player to the center of their current block, level the view, and snap the yaw to the closest cardinal direction before placing anything. Stand on the ground block that should be the documented origin and face broadly toward the intended north, south, east, or west build direction before running a function.
- The snap removes fractional-position, yaw, and pitch drift that can skew large caret-relative builds. Exact diagonal ties resolve consistently to one of the two neighboring cardinal directions.
- Run public functions as a player. Internal functions whose names begin with `_` are scheduled callbacks and must not be invoked manually.
- LLMs sometimes confuse Bedrock and Java assets or command syntax. After generation, tell the LLM to check that the function uses only resources supported by the Minecraft version you want.
- Generated functions can place many blocks at once. Test new blueprints in a disposable world or make a backup before running them in a world you care about.

## Building the pack

On Windows, double-click `build_ai_minecraft_pack.bat` or run it from a terminal:

```bat
build_ai_minecraft_pack.bat
```

The script uses Windows PowerShell to create:

- `packs/<public_function_name>.mcpack`: one pack per build, such as `packs/2_theme_park_ferris_wheel.mcpack`. Import the pack for the build you want. Each contains its public function and any required internal callbacks and structure assets.
- `ai-minecraft-builds.mcpack` at the repository root: the complete collection, kept for debugging.

Individual packs have distinct, stable pack identities so they can be imported separately. Their versions and minimum Minecraft version come from `src/manifest.json`. Function commands remain the same as in the catalog above.

The packager validates dependencies before replacing output, replaces existing generated packs, and removes obsolete numbered packs from `packs/` after a successful run. Generated archives are ignored by Git. Rebuild and reimport the relevant pack after changing its source.
