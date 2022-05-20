call plug#begin()
	Plug 'valloric/youcompleteme', {'do': './install.py --ninja --clangd-completer'}
	Plug 'rhysd/vim-clang-format', {'for': ['c', 'c++']}
	Plug 'tpope/vim-commentary'
	Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }

call plug#end()

set number
syntax on
filetype indent on
set noswapfile

colorscheme gruvbox

autocmd BufWrite *.c,*.cpp,*.h,*.hpp :ClangFormat
