# upgrade-unittest

[![Test](https://github.com/hugovk/upgrade-unittest/actions/workflows/test.yml/badge.svg)](https://github.com/hugovk/upgrade-unittest/actions/workflows/test.yml)

Script to upgrade some Python unittest assert methods to be more useful.

It's just a bunch of sed scripts rather than parsing the AST, and isn't 
good with multiline or complex statements, so always review the output.

```sh
upgrade-unittest.sh test.py

upgrade-unittest.sh *.py

upgrade-unittest.sh `find . -name "*.py"`
```

## See also

* https://github.com/isidentical/teyit
* https://github.com/jparise/flake8-assertive
