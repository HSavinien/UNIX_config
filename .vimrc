
"load default school config :
source /usr/share/vim/vimrc

syntax on
set nu
set colorcolumn=81
set ruler
set showcmd
set mouse=a
set shiftwidth=0


let mapleader="\\"

"comment/uncomment all debug line
map <leader>h :g/\/\/debug/s/^/\/\/<cr>:noh<cr>
map <leader>s :g/^\s*\/\/.*\/\/debug$/s/^\/\///<cr>:noh<cr>

"access system clipboard with Y and P
map Y V:w !pbcopy<cr><cr>
vmap Y :w !pbcopy<cr><cr>
map P !!pbpaste<cr>

filetype plugin on
filetype on
autocmd BufRead,BufNewFile *.tpp set filetype=cpp

