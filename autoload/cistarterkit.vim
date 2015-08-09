"=============================================================================
" FILE: autoload/cistarterkit.vim
" AUTHOR: haya14busa
" License: MIT license
"=============================================================================
scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim

" script-local function
function! s:fib(n) abort
  return a:n < 2 ? a:n : s:fib(a:n - 1) + s:fib(a:n - 2)
endfunction

function! s:fib2(n) abort
  let table = [0, 1]
  for i in range(2, a:n)
    let table += [table[i - 1] + table[i - 2]]
  endfor
  return table[a:n]
endfunction

" autoload function
function! cistarterkit#fib(...) abort
  " return call(function('s:fib'), a:000)
  return call(function('s:fib2'), a:000)
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
" __END__
" vim: expandtab softtabstop=2 shiftwidth=2 foldmethod=marker
