# AI Minecraft Builds

Large language models can generate Minecraft scripts that act as blueprints for buildings and other structures. Describe what you want, ask an LLM for an `.mcfunction` file, and run that function in Minecraft to place the build block by block.

This repository is a collection of those generated blueprints, along with a packaging script that turns them into an `.mcpack` file Minecraft can import.

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

## Placement and compatibility details

- Scripts generate the build in the direction you are facing. Face one of the four cardinal directions—north, south, east, or west—and look straight ahead before running a function.
- To look straight ahead, point the crosshair directly at the horizon. Looking up or down can change how caret-relative coordinates are interpreted and distort the build.
- LLMs sometimes confuse Bedrock and Java assets or command syntax. After generation, tell the LLM to check that the function uses only resources supported by the Minecraft version you want.
- Generated functions can place many blocks at once. Test new blueprints in a disposable world or make a backup before running them in a world you care about.

## Building the pack

On Windows, double-click `build_ai_minecraft_pack.bat` or run it from a terminal:

```bat
build_ai_minecraft_pack.bat
```

The script validates the manifest, functions, and structures directories, removes an older generated archive if present, creates a ZIP archive, and renames it to `ai-minecraft-builds.mcpack` for import into Minecraft.
