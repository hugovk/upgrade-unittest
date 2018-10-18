import unittest


true_value = True
false_value = False
none_value = None


class TestStuff(unittest.TestCase):
    def test_contains(self):
        self.assertIn(1, [1, 2])
        self.assertNotIn(9, [1, 2])
        self.assertNotIn(9, [1, 2])
        self.assertIn(1, [1, 2])

    def test_comparison(self):
        self.assertGreater(9, 1)
        self.assertGreater(2, 1)
        self.assertGreaterEqual(9, 1)
        self.assertGreaterEqual(2, 1)
        self.assertGreaterEqual(1, 1)
        self.assertGreaterEqual(9, 1)
        self.assertGreaterEqual(2, 1)
        self.assertGreater(9, 1)
        self.assertGreater(2, 1)
        self.assertLess(1, 9)
        self.assertLess(1, 2)
        self.assertLessEqual(1, 9)
        self.assertLessEqual(1, 2)
        self.assertLessEqual(1, 1)
        self.assertLessEqual(1, 9)
        self.assertLessEqual(1, 2)
        self.assertLessEqual(1, 1)
        self.assertLess(1, 9)
        self.assertLess(1, 2)

    def test_equality(self):
        self.assertEqual(1, 1)
        self.assertNotEqual(1, 9)
        self.assertNotEqual(1, 9)
        self.assertEqual(1, 1)
        self.assertIsNone(None)
        self.assertIsNotNone(1)
        self.assertIsNone(None)
        self.assertIsNotNone(1)
        self.assertIsNone(None)
        self.assertFalse(False)
        self.assertIsNotNone(1)
        self.assertIsInstance(1, int)
        self.assertTrue(true_value)
        self.assertTrue(true_value)
        self.assertIsNot(false_value, true_value)
        self.assertIs(false_value, False)
        self.assertIsNone(none_value)


if __name__ == "__main__":
    unittest.main()
