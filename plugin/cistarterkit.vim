"=============================================================================
" FILE: plugin/cistarterkit.vim
" AUTHOR: haya14busa
" License: MIT license
"=============================================================================
scriptencoding utf-8
if expand('%:p') ==# expand('<sfile>:p')
  unlet! g:loaded_cistarterkit
endif
if exists('g:loaded_cistarterkit')
  finish
endif
let g:loaded_cistarterkit = 1
let s:save_cpo = &cpo
set cpo&vim


noremap <Plug>(cistarterkit-test) :<C-u>echo 'hi'<CR>


let &cpo = s:save_cpo
unlet s:save_cpo
" __END__
" vim: expandtab softtabstop=2 shiftwidth=2 foldmethod=marker
