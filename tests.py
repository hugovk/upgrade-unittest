import unittest


class TestStuff(unittest.TestCase):

    def test_contains(self):
        self.assertIn(1, [1, 2])
        self.assertNotIn(9, [1, 2])
        self.assertNotIn(9, [1, 2])
        self.assertIn(1, [1, 2])

    def test_comparison(self):
        self.assertGreater(9, 1)
        self.assertGreaterEqual(9, 1)
        self.assertFalse(9 < 1)
        self.assertFalse(9 <= 1)
        self.assertLess(1, 9)
        self.assertLessEqual(1, 9)
        self.assertFalse(1 > 9)
        self.assertFalse(1 >= 9)

    def test_equality(self):
        self.assertTrue(1 == 1)
        self.assertNotEqual(1, 9)
        self.assertFalse(1 == 9)
        self.assertFalse(1 != 1)
        self.assertEqual(None, None)


if __name__ == "__main__":
    unittest.main()
