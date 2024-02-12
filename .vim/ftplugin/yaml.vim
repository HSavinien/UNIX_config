if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

let s:cpo_save = &cpo
set cpo&vim


setlocal comments=:# commentstring=#\ %s
setlocal formatoptions-=t formatoptions+=croql

set tabstop=2

let &cpo = s:cpo_save
unlet s:cpo_save
set autoindent
set smartindent
