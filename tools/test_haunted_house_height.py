"""Regression tests for the flat-world no-placement failure."""
import json
import unittest

import generate_themed_haunted_house as estate


class FlatWorldPlacement(unittest.TestCase):
    def setUp(self):
        self.name=f"{estate.NAME}.mcfunction"
        self.text=(estate.FUNCTIONS/self.name).read_text()
        self.assets=json.loads((estate.DOCS/'metrics.json').read_text())['structures']

    def test_all_cardinal_loads_fit_flat_world_and_documented_extremes(self):
        tested=estate.validate_world_heights({self.name:self.text},self.assets)
        self.assertIn(-60,tested)
        self.assertIn(-63,tested)
        self.assertIn(223,tested)

    def test_original_underground_load_origin_is_rejected(self):
        broken=self.text.replace(' ^-1 ^',' ^-9 ^')
        self.assertNotEqual(broken,self.text)
        with self.assertRaisesRegex(AssertionError,'structure outside Overworld'):
            estate.validate_world_heights({self.name:broken},self.assets)


if __name__=='__main__':
    unittest.main()
