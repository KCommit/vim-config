call plug#begin()

	Plug 'valloric/youcompleteme', {'do': './install.py --ninja --clangd-completer'}
	Plug 'rhysd/vim-clang-format', {'for': ['c', 'cpp']}
	Plug 'tpope/vim-commentary'
	Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
	Plug 'sirver/ultisnips'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'ryanoasis/vim-devicons'

call plug#end()

set number
syntax on
filetype indent on
set noswapfile

colorscheme gruvbox

autocmd BufWrite *.c,*.cpp,*.h,*.hpp :ClangFormat

let g:UltiSnipsExpandTrigger="<c-e>"

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'minimalist'

	

