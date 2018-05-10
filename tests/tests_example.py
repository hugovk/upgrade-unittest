import unittest


class TestStuff(unittest.TestCase):

    def test_contains(self):
        self.assertTrue(1 in [1, 2])
        self.assertFalse(9 in [1, 2])
        self.assertTrue(9 not in [1, 2])
        self.assertFalse(1 not in [1, 2])

    def test_comparison(self):
        self.assertTrue(9 > 1)
        self.assertTrue(2 > 1)
        self.assertTrue(9 >= 1)
        self.assertTrue(2 >= 1)
        self.assertTrue(1 >= 1)
        self.assertFalse(9 < 1)
        self.assertFalse(2 < 1)
        self.assertFalse(9 <= 1)
        self.assertFalse(2 <= 1)
        self.assertTrue(1 < 9)
        self.assertTrue(1 < 2)
        self.assertTrue(1 <= 9)
        self.assertTrue(1 <= 2)
        self.assertTrue(1 <= 1)
        self.assertFalse(1 > 9)
        self.assertFalse(1 > 2)
        self.assertFalse(1 > 1)
        self.assertFalse(1 >= 9)
        self.assertFalse(1 >= 2)

    def test_equality(self):
        self.assertTrue(1 == 1)
        self.assertTrue(1 != 9)
        self.assertFalse(1 == 9)
        self.assertFalse(1 != 1)
        self.assertEqual(None, None)
        self.assertTrue(1 is not None)


if __name__ == "__main__":
    unittest.main()
