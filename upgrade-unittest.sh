#!/bin/bash
#
# Upgrade some Python unittest assert methods to be more useful
#
# Usage: upgrade-unittest.sh test.py
#
# Note: doesn't work on multiline test
#
# https://docs.python.org/2/library/unittest.html#assert-methods

old='self\.assertTrue(\(.*\) not in \(.*\))'
new='self.assertNotIn(\1, \2)'

sed -i.bak "s/$old/$new/g" $1

old='self\.assertTrue(\(.*\) in \(.*\))'
new='self.assertIn(\1, \2)'

sed -i.bak "s/$old/$new/g" $1

old='self\.assertFalse(\(.*\) not in \(.*\))'
new='self.assertIn(\1, \2)'

sed -i.bak "s/$old/$new/g" $1

old='self\.assertFalse(\(.*\) in \(.*\))'
new='self.assertNotIn(\1, \2)'

sed -i.bak "s/$old/$new/g" $1

old='self\.assertTrue(\(.*\) != \(.*\))'
new='self.assertNotEqual(\1, \2)'

sed -i.bak "s/$old/$new/g" $1

old='self\.assertTrue(\(.*\) > \(.*\))'
new='self.assertGreater(\1, \2)'

sed -i.bak "s/$old/$new/g" $1

old='self\.assertTrue(\(.*\) >= \(.*\))'
new='self.assertGreaterEqual(\1, \2)'

sed -i.bak "s/$old/$new/g" $1

old='self\.assertTrue(\(.*\) < \(.*\))'
new='self.assertLess(\1, \2)'

sed -i.bak "s/$old/$new/g" $1

old='self\.assertTrue(\(.*\) <= \(.*\))'
new='self.assertLessEqual(\1, \2)'

sed -i.bak "s/$old/$new/g" $1

old='self\.assertEqual(\(.*\), None)'
new='self.assertIsNone(\1)'

sed -i.bak "s/$old/$new/g" $1
