"load default school config :
source /usr/share/vim/vimrc

syntax on
set nu
set colorcolumn=81
set ruler
set showcmd

"=============================================================================="
"								shortcut									   "
"=============================================================================="

"remap :
map <F12> odprintf(2, "entering %s (%s:%d)\n", __FUNCTION__, __FILE__,__LINE__);//DEBUG<Esc>
map <F10> odprintf(2, "exiting %s (%s:%d)\n", __FUNCTION__, __FILE__,__LINE__);//DEBUG<Esc>
map <F2> i#include <string.h><cr>#include <stdlib.h><cr>#include <unistd.h><cr>#include <signal.h><cr>#include <fcntl.h><cr>#include <stdio.h><cr>#include <limits.h><cr>#include <errno.h><cr>#include <pthread.h><cr><Esc>
map <F3> oint	main(int ac, char **av, char **env)<cr>{<cr>if (ac < 2)<cr>return(printf("error args\nusage : <%s> <>", av[0]));<cr><cr>}

"abbreviate :
iab //d dprintf(2, "debug(%sl%d):\n", __FUNCTION__,__LINE__);//DEBUG

"=============================================================================="
"									LaTeX
"=============================================================================="

" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
