vim-ci-starterkit
=================

This project template is a skeleton for a Vim plugin development for CI

### Supported CI
- https://travis-ci.org/

Testing Framework
-----------------

### themis
- https://github.com/thinca/vim-themis

TIPS: Execute specs with https://github.com/thinca/vim-quickrun

```vim
let g:quickrun_config = {
\ 'vimspec' : {
\   'command' : 'themis',
\   'cmdopt'  : '--runtimepath ".." --runtimepath ~/.vim/bundle/vital.vim',
\   'exec'    : '%c %o %s:p | tr -d "\r"'
\ }
\}
```

### Helper for unit testing
- Vital.Vim.ScriptLocal: https://github.com/vim-jp/vital.vim/blob/master/doc/vital-vim-script_local.txt

Linter
------

#### vim-vimlint
- https://github.com/syngan/vim-vimlint

#### vint
- https://github.com/Kuniwak/vint

#### DOCTEST
- https://github.com/Rykka/doctest.vim
