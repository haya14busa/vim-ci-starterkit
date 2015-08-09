"=============================================================================
" FILE: autoload/cistarterkit/fib.vim
" AUTHOR: haya14busa
" License: MIT license
"=============================================================================
scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim

let s:V = vital#of('cistarterkit')
let s:BigNum = s:V.import('Data.BigNum')

" :DOCTEST https://github.com/Rykka/doctest.vim
" >>> echo s:fib3(1)
" 1
" >>> echo s:fib3(10)
" 55
function! s:fib3(n) abort
  let table = map([0, 1], 's:BigNum.from_num(v:val)')
  " range(2, 0) => E727: Start past end
  if a:n > 1
    for i in range(2, a:n)
      let table += [s:BigNum.add(table[i - 1], table[i - 2])]
    endfor
  endif
  return s:BigNum.to_string(table[a:n])
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
" __END__
" vim: expandtab softtabstop=2 shiftwidth=2 foldmethod=marker
