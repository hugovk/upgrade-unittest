import unittest


true_value = True
false_value = False
none_value = None


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
        self.assertTrue(None is None)
        self.assertFalse(1 is None)
        self.assertFalse(None is not None)
        self.assertEqual(False, False)
        self.assertNotEqual(1, None)
        self.assertTrue(isinstance(1, int))
        self.assertEqual(true_value, True)
        self.assertEqual(True, true_value)
        self.assertTrue(false_value is not true_value)
        self.assertTrue(false_value is False)
        self.assertEqual(None, none_value)


if __name__ == "__main__":
    unittest.main()
