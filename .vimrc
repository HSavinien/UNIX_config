
"load default school config :
"there is no escape.you're stuck here with me for ever!!![2;2R
source /usr/share/vim/vimrc

syntax on
set nu
set colorcolumn=81
set ruler
set showcmd

filetype plugin on

"=============================================================================="
"									LaTeX
"=============================================================================="

set shellslash

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

