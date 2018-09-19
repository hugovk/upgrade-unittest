#!/bin/bash
#
# Upgrade some Python unittest assert methods to be more useful
#
# Usage: upgrade-unittest.sh test.py
#
# Note: macOS needs gnu-sed:
#
#   $ brew install gnu-sed --with-default-names
#
# Note: doesn't work on multiline test
#
# https://docs.python.org/2/library/unittest.html#assert-methods

for filename in $*
do
  echo "$filename"

  # Contains

  old='self\.assertTrue(\(.*\) not in \(.*\))'
  new='self.assertNotIn(\1, \2)'

  sed -i "s/$old/$new/g" "$filename"

  old='self\.assertTrue(\(.*\) in \(.*\))'
  new='self.assertIn(\1, \2)'

  sed -i "s/$old/$new/g" "$filename"

  old='self\.assertFalse(\(.*\) not in \(.*\))'
  new='self.assertIn(\1, \2)'

  sed -i "s/$old/$new/g" "$filename"

  old='self\.assertFalse(\(.*\) in \(.*\))'
  new='self.assertNotIn(\1, \2)'

  sed -i "s/$old/$new/g" "$filename"

  # Comparison

  old='self\.assertTrue(\(.*\) != \(.*\))'
  new='self.assertNotEqual(\1, \2)'

  sed -i "s/$old/$new/g" "$filename"

  old='self\.assertTrue(\(.*\) > \(.*\))'
  new='self.assertGreater(\1, \2)'

  sed -i "s/$old/$new/g" "$filename"

  old='self\.assertTrue(\(.*\) >= \(.*\))'
  new='self.assertGreaterEqual(\1, \2)'

  sed -i "s/$old/$new/g" "$filename"

  old='self\.assertTrue(\(.*\) < \(.*\))'
  new='self.assertLess(\1, \2)'

  sed -i "s/$old/$new/g" "$filename"

  old='self\.assertTrue(\(.*\) <= \(.*\))'
  new='self.assertLessEqual(\1, \2)'

  sed -i "s/$old/$new/g" "$filename"

  old='self\.assertFalse(\(.*\) < \(.*\))'
  new='self.assertGreaterEqual(\1, \2)'

  sed -i "s/$old/$new/g" "$filename"

  old='self\.assertFalse(\(.*\) <= \(.*\))'
  new='self.assertGreater(\1, \2)'

  sed -i "s/$old/$new/g" "$filename"

  old='self\.assertFalse(\(.*\) > \(.*\))'
  new='self.assertLessEqual(\1, \2)'

  sed -i "s/$old/$new/g" "$filename"

  old='self\.assertFalse(\(.*\) >= \(.*\))'
  new='self.assertLess(\1, \2)'

  sed -i "s/$old/$new/g" "$filename"

  # Equality

  old='self\.assertEqual(\(.*\), None)'
  new='self.assertIsNone(\1)'

  sed -i "s/$old/$new/g" "$filename"

  old='self\.assertTrue(\(.*\) == \(.*\))'
  new='self.assertEqual(\1, \2)'

  sed -i "s/$old/$new/g" "$filename"

  old='self\.assertFalse(\(.*\) == \(.*\))'
  new='self.assertNotEqual(\1, \2)'

  sed -i "s/$old/$new/g" "$filename"

  old='self\.assertFalse(\(.*\) != \(.*\))'
  new='self.assertEqual(\1, \2)'

  sed -i "s/$old/$new/g" "$filename"

  old='self\.assertTrue(\(.*\) is not None)'
  new='self.assertIsNotNone(\1)'

  sed -i "s/$old/$new/g" "$filename"

  old='self\.assertTrue(\(.*\) is None)'
  new='self.assertIsNone(\1)'

  sed -i "s/$old/$new/g" "$filename"

  old='self\.assertFalse(\(.*\) is None)'
  new='self.assertIsNotNone(\1)'

  sed -i "s/$old/$new/g" "$filename"

  old='self\.assertFalse(\(.*\) is not None)'
  new='self.assertIsNone(\1)'

  sed -i "s/$old/$new/g" "$filename"

  old='self\.assertEqual(\(.*\), False)'
  new='self.assertFalse(\1)'

  sed -i "s/$old/$new/g" "$filename"

  old='self\.assertNotEqual(\(.*\), None)'
  new='self.assertIsNotNone(\1)'

  sed -i "s/$old/$new/g" "$filename"

  old='self\.assertTrue(isinstance(\(.*\), \(.*\)))'
  new='self.assertIsInstance(\1, \2)'

  sed -i "s/$old/$new/g" "$filename"

done
