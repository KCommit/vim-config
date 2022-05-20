set nocompatible
set encoding=utf-8
call plug#begin()

	Plug 'valloric/youcompleteme', {'do': './install.py --ninja --clangd-completer'}
	Plug 'rhysd/vim-clang-format', {'for': ['c', 'cpp', 'objc', 'objcpp']}
	Plug 'tpope/vim-commentary'
	Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
	Plug 'sirver/ultisnips'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'ryanoasis/vim-devicons'
	Plug 'w0rp/ale'
call plug#end()

set number
syntax on
filetype indent on
set noswapfile

colorscheme gruvbox

autocmd BufWrite *.c,*.cpp,*.h,*.hpp,*.m,*.mm :ClangFormat

let g:UltiSnipsExpandTrigger="<c-e>"

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'minimalist'
let g:airline#extensions#ale#enabled = 1

set completeopt-=preview

let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
" Write this in your vimrc file
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
" You can disable this option too
" if you don't want linters to run on opening a file
let g:ale_lint_on_enter = 1


let g:ycm_show_diagnostics_ui = 0
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_complete_in_comments = 1
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_cache_omnifunc=0
let g:ycm_confirm_extra_conf=0
