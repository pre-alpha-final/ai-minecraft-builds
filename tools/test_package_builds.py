"""Integration checks for isolated build packs; run with Python on Windows."""

import json
from pathlib import Path
import shutil
import subprocess
import tempfile
import unittest
import uuid
import zipfile


REPOSITORY = Path(__file__).resolve().parents[1]
PACKAGER = REPOSITORY / "tools/package_builds.ps1"
POWERSHELL = shutil.which("powershell.exe")


@unittest.skipUnless(POWERSHELL, "Windows PowerShell is required")
class PackageBuildsTests(unittest.TestCase):
    def setUp(self):
        self.temporary = tempfile.TemporaryDirectory(prefix="minecraft pack's ")
        self.root = Path(self.temporary.name) / "repo [builds]"
        self.functions = self.root / "src/functions"
        self.structures = self.root / "src/structures/test"
        self.functions.mkdir(parents=True)
        self.structures.mkdir(parents=True)
        self.source_manifest = json.loads((REPOSITORY / "src/manifest.json").read_bytes())
        self.source_manifest["modules"] = [module for module in self.source_manifest["modules"] if module["type"] != "script"]
        self.source_manifest.pop("dependencies", None)
        self.manifest_path = self.root / "src/manifest.json"
        self.manifest_path.write_text(json.dumps(self.source_manifest), encoding="utf-8")
        sources = {
            "1_small.mcfunction": b"# function _missing\nsetblock ^ ^ ^2 minecraft:stone\n",
            "2_large.mcfunction": (
                b"execute as @s at @s run schedule on_area_loaded clear function _loaded\n"
                b"execute as @s at @s run schedule on_area_loaded add tickingarea test _loaded\n"
                b"execute as @s at @s run execute if entity @s run structure load test:ride ^ ^ ^\n"
            ),
            "_loaded.mcfunction": b"schedule delay add _cleanup 100 replace\r\n",
            "_cleanup.mcfunction": b"execute as @a at @s run function _details\n",
            "_details.mcfunction": (
                b"structure load test:detail ~ ~ ~\n"
                b'tellraw @a {"rawtext":[{"text":"run function _missing"}]}\n'
            ),
            "_unused.mcfunction": b"say Not a dependency\n",
        }
        for name, data in sources.items():
            (self.functions / name).write_bytes(data)
        for name in ("ride", "detail", "ride_extra"):
            (self.structures / f"{name}.mcstructure").write_bytes(name.encode())
        (self.root / "src/unpackaged-model.obj").write_text("excluded", encoding="utf-8")

    def tearDown(self):
        temporary_path = Path(self.temporary.name).resolve()
        assert temporary_path.is_relative_to(Path(tempfile.gettempdir()).resolve())
        assert temporary_path.name.startswith("minecraft pack's ")
        self.temporary.cleanup()

    def run_packager(self, error=None):
        result = subprocess.run(
            [POWERSHELL, "-NoProfile", "-ExecutionPolicy", "Bypass", "-File", str(PACKAGER),
             "-Root", str(self.root)],
            cwd=self.root.parent, capture_output=True, text=True, timeout=30,
        )
        output = result.stdout + result.stderr
        if error is None:
            self.assertEqual(result.returncode, 0, output)
        else:
            self.assertNotEqual(result.returncode, 0, output)
            self.assertIn(error, output)
        self.assertFalse(list(self.root.rglob("*.tmp")))

    def pack_manifest(self, name):
        with zipfile.ZipFile(self.root / "packs" / f"{name}.mcpack") as archive:
            return json.loads(archive.read("manifest.json"))

    def output_snapshot(self):
        return {p.relative_to(self.root): p.read_bytes() for p in self.root.rglob("*.mcpack")}

    def test_exact_contents_bytes_and_identities(self):
        self.run_packager()
        all_ids = {self.source_manifest["header"]["uuid"]}
        all_ids.update(module["uuid"] for module in self.source_manifest["modules"])
        expected = {
            "1_small": {"manifest.json", "functions/1_small.mcfunction"},
            "2_large": {
                "manifest.json", "functions/2_large.mcfunction", "functions/_loaded.mcfunction",
                "functions/_cleanup.mcfunction", "functions/_details.mcfunction",
                "structures/test/ride.mcstructure", "structures/test/detail.mcstructure",
            },
        }
        for name, entries in expected.items():
            with zipfile.ZipFile(self.root / "packs" / f"{name}.mcpack") as archive:
                self.assertEqual(set(archive.namelist()), entries)
                self.assertIsNone(archive.testzip())
                for entry in entries - {"manifest.json"}:
                    self.assertEqual(archive.read(entry), (self.root / "src" / entry).read_bytes())
            manifest = self.pack_manifest(name)
            number = name.split("_", 1)[0]
            self.assertIn(name, manifest["header"]["name"])
            for section, source in [(manifest["header"], self.source_manifest["header"])] + list(
                zip(manifest["modules"], self.source_manifest["modules"])
            ):
                expected_uuid = str(uuid.uuid5(uuid.UUID(source["uuid"]), f"build:{number}"))
                self.assertEqual(section["uuid"], expected_uuid)
                self.assertNotIn(section["uuid"], all_ids)
                all_ids.add(section["uuid"])
                self.assertEqual(section["version"], source["version"])
            self.assertEqual(manifest["header"]["min_engine_version"],
                             self.source_manifest["header"]["min_engine_version"])
        with zipfile.ZipFile(self.root / "ai-minecraft-builds.mcpack") as archive:
            source = self.root / "src"
            expected_debug = {"manifest.json"} | {
                p.relative_to(source).as_posix()
                for directory in (self.functions, self.root / "src/structures")
                for p in directory.rglob("*") if p.is_file()
            }
            self.assertEqual(set(archive.namelist()), expected_debug)
            for entry in expected_debug:
                self.assertEqual(archive.read(entry), (source / entry).read_bytes())

    def test_rebuild_and_rename_preserve_identity_and_prune_only_old_outputs(self):
        self.run_packager()
        before = self.pack_manifest("1_small")
        self.run_packager()
        self.assertEqual(self.pack_manifest("1_small"), before)
        (self.functions / "1_small.mcfunction").rename(self.functions / "1_renamed.mcfunction")
        unrelated = self.root / "packs/user-backup.mcpack"
        unrelated.write_bytes(b"keep")
        self.run_packager()
        renamed = self.pack_manifest("1_renamed")
        self.assertEqual(renamed["header"]["uuid"], before["header"]["uuid"])
        self.assertEqual(renamed["modules"], before["modules"])
        self.assertFalse((self.root / "packs/1_small.mcpack").exists())
        self.assertEqual(unrelated.read_bytes(), b"keep")

    def test_missing_dependencies_preserve_previous_packs(self):
        self.run_packager()
        before = self.output_snapshot()
        for target in (self.functions / "_loaded.mcfunction", self.functions / "_cleanup.mcfunction",
                       self.structures / "ride.mcstructure", self.structures / "detail.mcstructure"):
            with self.subTest(target=target.name):
                data = target.read_bytes()
                target.unlink()
                try:
                    self.run_packager("references missing")
                    self.assertEqual(self.output_snapshot(), before)
                finally:
                    target.write_bytes(data)

    def test_invalid_catalog_or_schedule_preserves_previous_packs(self):
        self.run_packager()
        before = self.output_snapshot()
        for name, command, error in (
            ("1_duplicate", "say duplicate", "Duplicate public build number"),
            ("3_invalid", "function 1_small", "underscore-prefixed internal functions"),
            ("3_schedule", "schedule on_area_loaded add circle ~ ~ ~ 2 _loaded", "Unsupported schedule"),
            ("invalid", "say invalid", "Invalid public build filename"),
        ):
            with self.subTest(name=name):
                target = self.functions / f"{name}.mcfunction"
                target.write_text(command + "\n", encoding="utf-8")
                try:
                    self.run_packager(error)
                    self.assertEqual(self.output_snapshot(), before)
                finally:
                    target.unlink()

    def test_batch_wrapper_from_another_directory(self):
        tools = self.root / "tools"
        tools.mkdir()
        shutil.copyfile(PACKAGER, tools / PACKAGER.name)
        bat = self.root / "build_ai_minecraft_pack.bat"
        shutil.copyfile(REPOSITORY / bat.name, bat)
        result = subprocess.run(
            ["cmd.exe", "/d", "/c", str(bat)], input="\n", text=True,
            capture_output=True, cwd=self.root.parent, timeout=30,
        )
        self.assertEqual(result.returncode, 0, result.stdout + result.stderr)
        self.assertIn("SUCCESS", result.stdout)
        self.assertTrue((self.root / "packs/2_large.mcpack").is_file())

    def add_script_utility(self):
        scripts = self.root / "src/scripts"
        scripts.mkdir()
        (scripts / "test.js").write_text('import "./input.js";\n', encoding="utf-8")
        (scripts / "input.js").write_text("export const value = 1;\n", encoding="utf-8")
        (scripts / "unused.js").write_text("// Debug only\n", encoding="utf-8")
        manifest = json.loads(self.manifest_path.read_bytes())
        manifest["modules"].append({
            "type": "script", "language": "javascript", "entry": "scripts/test.js",
            "uuid": str(uuid.uuid4()), "version": manifest["header"]["version"],
        })
        manifest["dependencies"] = [{"module_name": "@minecraft/server", "version": "1.16.0"}]
        self.manifest_path.write_text(json.dumps(manifest), encoding="utf-8")
        dependencies = {"fixture:clear": {
            "entry": "scripts/test.js", "files": ["scripts/test.js", "scripts/input.js"],
            "functions": ["_sign_start"],
        }}
        (self.root / "src/script_dependencies.json").write_text(json.dumps(dependencies), encoding="utf-8")
        (self.functions / "0_clear_sides_forward_up.mcfunction").write_text(
            "execute as @s at @s run scriptevent fixture:clear read_sign\n", encoding="utf-8")
        (self.functions / "_sign_start.mcfunction").write_text("function _details\n", encoding="utf-8")
        return manifest

    def test_script_dependencies_are_isolated_and_zero_preserves_legacy_identity(self):
        legacy = self.functions / "21_clear_area.mcfunction"
        legacy.write_text("say legacy utility\n", encoding="utf-8")
        self.run_packager()
        old_manifest = self.pack_manifest("21_clear_area")
        legacy.unlink()
        source = self.add_script_utility()
        self.run_packager()
        self.assertFalse((self.root / "packs/21_clear_area.mcpack").exists())
        utility = self.pack_manifest("0_clear_sides_forward_up")
        self.assertEqual(utility["header"]["uuid"], old_manifest["header"]["uuid"])
        self.assertEqual(utility["modules"][0]["uuid"], old_manifest["modules"][0]["uuid"])
        self.assertEqual(len(utility["modules"]), 2)
        self.assertEqual(utility["dependencies"], source["dependencies"])
        with zipfile.ZipFile(self.root / "packs/0_clear_sides_forward_up.mcpack") as archive:
            self.assertEqual(set(archive.namelist()), {
                "manifest.json", "functions/0_clear_sides_forward_up.mcfunction", "functions/_sign_start.mcfunction",
                "functions/_details.mcfunction", "structures/test/detail.mcstructure", "scripts/test.js", "scripts/input.js",
            })
        small = self.pack_manifest("1_small")
        self.assertEqual(len(small["modules"]), 1)
        self.assertNotIn("dependencies", small)
        with zipfile.ZipFile(self.root / "packs/1_small.mcpack") as archive:
            self.assertFalse(any(name.startswith("scripts/") for name in archive.namelist()))
        with zipfile.ZipFile(self.root / "ai-minecraft-builds.mcpack") as archive:
            self.assertIn("scripts/unused.js", archive.namelist())
            self.assertNotIn("script_dependencies.json", archive.namelist())

    def test_script_dependency_errors_preserve_previous_archives(self):
        self.add_script_utility()
        self.run_packager()
        before = self.output_snapshot()
        script = self.root / "src/scripts/input.js"
        data = script.read_bytes()
        script.unlink()
        self.run_packager("references missing script")
        self.assertEqual(self.output_snapshot(), before)
        script.write_bytes(data)
        unknown = self.functions / "3_unknown.mcfunction"
        unknown.write_text("scriptevent missing:event read_sign\n", encoding="utf-8")
        self.run_packager("Unknown script event dependency")
        self.assertEqual(self.output_snapshot(), before)
        unknown.unlink()
        for name in ("0_other", "00_clear_sides_forward_up"):
            path = self.functions / f"{name}.mcfunction"
            path.write_text("say invalid\n", encoding="utf-8")
            self.run_packager("Invalid public build filename")
            self.assertEqual(self.output_snapshot(), before)
            path.unlink()
        (self.functions / "21_reused.mcfunction").write_text("say retired\n", encoding="utf-8")
        self.run_packager("Duplicate permanent build identity")
        self.assertEqual(self.output_snapshot(), before)


if __name__ == "__main__":
    unittest.main()
