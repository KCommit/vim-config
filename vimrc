call plug#begin()
Plug 'valloric/youcompleteme', {'do': './install.py --ninja --clangd-completer'}
call plug#end()

set number
syntax on
filetype indent on
set noswapfile
