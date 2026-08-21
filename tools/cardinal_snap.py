#!/usr/bin/env python3
"""Apply and validate the public-function cardinal snap convention."""

from __future__ import annotations

import argparse
from pathlib import Path
from typing import Iterable


MARKER = "# === SNAP PLAYER TO BLOCK CENTER AND NEAREST CARDINAL ==="
REANCHOR_PREFIX = "execute as @s at @s rotated as @s run "
SNAP_COMMANDS = (
    "execute if entity @s[rym=-45,ry=45] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 0 0",
    "execute if entity @s[rym=45,ry=135] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 90 0",
    "execute if entity @s[rym=135,ry=180] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 180 0",
    "execute if entity @s[rym=-180,ry=-135] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 180 0",
    "execute if entity @s[rym=-135,ry=-45] as @s at @s align xz run tp @s ~0.5 ~ ~0.5 -90 0",
)


def is_command(line: str) -> bool:
    return bool(line) and not line.startswith("#")


def reanchor(command: str) -> str:
    return REANCHOR_PREFIX + command


def transform_public_lines(source: Iterable[str]) -> list[str]:
    """Insert the snap block and re-anchor every pre-existing command."""
    lines = list(source)
    if MARKER in lines:
        validate_public_lines(lines)
        return lines

    first_command = next((index for index, line in enumerate(lines) if is_command(line)), None)
    if first_command is None:
        raise ValueError("public function contains no executable commands")

    preceding_blanks = [index for index in range(first_command) if lines[index] == ""]
    insertion = preceding_blanks[-1] + 1 if preceding_blanks else first_command
    if insertion > 0 and lines[insertion - 1] != "":
        snap_block = ["", MARKER, *SNAP_COMMANDS, ""]
    else:
        snap_block = [MARKER, *SNAP_COMMANDS, ""]

    transformed = [reanchor(line) if is_command(line) else line for line in lines]
    transformed[insertion:insertion] = snap_block
    validate_public_lines(transformed)
    return transformed


def validate_public_lines(lines: list[str]) -> None:
    if lines.count(MARKER) != 1:
        raise ValueError("public function must contain exactly one cardinal-snap marker")
    marker_index = lines.index(MARKER)
    if tuple(lines[marker_index + 1 : marker_index + 1 + len(SNAP_COMMANDS)]) != SNAP_COMMANDS:
        raise ValueError("public function cardinal-snap commands differ from the standard sequence")

    snap_indexes = set(range(marker_index + 1, marker_index + 1 + len(SNAP_COMMANDS)))
    for index, line in enumerate(lines):
        if not is_command(line) or index in snap_indexes:
            continue
        if not line.startswith(REANCHOR_PREFIX):
            raise ValueError(f"public command is not re-anchored: {line}")


def line_ending(data: bytes, path: Path) -> bytes:
    lf_count = data.count(b"\n")
    crlf_count = data.count(b"\r\n")
    if crlf_count == lf_count:
        return b"\r\n"
    if crlf_count == 0:
        return b"\n"
    raise ValueError(f"{path}: mixed line endings")


def transform_file(path: Path, check: bool = False) -> bool:
    data = path.read_bytes()
    newline = line_ending(data, path)
    final_newline = data.endswith(newline)
    text = data.decode("utf-8")
    lines = text.splitlines()
    transformed = transform_public_lines(lines)
    output = newline.decode().join(transformed)
    if final_newline:
        output += newline.decode()
    encoded = output.encode("utf-8")
    changed = encoded != data
    if changed and check:
        raise ValueError(f"{path}: cardinal-snap convention is not applied")
    if changed:
        path.write_bytes(encoded)
    return changed


def public_functions(functions: Path) -> list[Path]:
    return sorted(path for path in functions.glob("*.mcfunction") if not path.name.startswith("_"))


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--check", action="store_true")
    parser.add_argument(
        "--functions",
        type=Path,
        default=Path(__file__).resolve().parents[1] / "src" / "functions",
    )
    args = parser.parse_args()
    files = public_functions(args.functions)
    changed = [path for path in files if transform_file(path, check=args.check)]
    print(f"public_functions={len(files)} changed={len(changed)} check={args.check}")


if __name__ == "__main__":
    main()
