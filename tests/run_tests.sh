#!/bin/bash

set -e
set -v

# Before
cp tests/tests_example.py tests/tests_example.py.bak
python3 tests/tests_example.py
flake8 tests/tests_example.py --ignore=A

# Act
./upgrade-unittest.sh tests/tests_example.py
diff tests/tests_example.py tests/tests_expected.py

# After
python3 tests/tests_example.py
flake8 tests/tests_example.py

# Reset
mv tests/tests_example.py.bak tests/tests_example.py
