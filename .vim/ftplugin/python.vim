let g:python_recommended_style = 1 "remove dubious default conf


set cc=80

map <F4> ggO#!/usr/bin/python3 <cr><Esc>:w<cr>:!chmod u+x %<cr><cr><cr>
map <F3> Oif __name__ == "__main__":<Esc>jVG>

"map <F12> :!autopep8 --in-place %<cr><cr>:e!<cr>

let b:did_ftplugin = 1
