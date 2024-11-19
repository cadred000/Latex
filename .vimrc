syntax on
set encoding=utf-8
set backspace=indent,eol,start
set nocompatible
set number
set nobackup
set noswapfile
set showcmd
set laststatus=2
setlocal spell
set spelllang=en_us
set ruler
set dictionary=
set completeopt=menuone,noinsert,noselect

augroup LaTeX
  autocmd!
  autocmd FileType tex setlocal noautoindent
augroup END

autocmd FileType c,cpp,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>
autocmd FileType c ClangFormatAutoEnable

call plug#begin('~/.vim/plugged')
Plug 'jiangmiao/auto-pairs'
Plug 'rhysd/vim-clang-format'
Plug 'morhetz/gruvbox'
let g:clang_format#style_options = {
            \ "AccessModifierOffset" : -4,
            \ "AllowShortIfStatementsOnASingleLine" : "true",
            \ "AlwaysBreakTemplateDeclarations" : "true",
            \ "Standard" : "C++11"}
Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_general_viewer='zathura'
let g:vimtex_quickfix_mode=1
let g:vimtex_quickfix_open_on_warning=0
let g:vimtex_quickfix_ignore_filters = [
	\ 'Wrong length of dash',
	\ 'Interword spacing',
	\ 'Command terminated with space',
	\ 'Intersentence spacing',
	\]
let g:vimtex_index_disable=1
" Plug 'github/copilot.vim'
Plug 'rust-lang/rust.vim'
Plug 'vim-syntastic/syntastic'
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = { 'mode': 'active',
	    \ 'active_filetypes': ['java', 'python', 'c','cpp', 'rust'],
	    \ 'passive_filetypes': ['tex'] }
Plug 'romainl/apprentice'
Plug 'nanotech/jellybeans.vim'
Plug 'danilo-augusto/vim-afterglow'
Plug 'ervandew/supertab'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'wycats/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'sirver/ultisnips'
Plug 'christoomey/vim-tmux-navigator'
Plug 'honza/vim-snippets'
let g:UltiSnipsSnippetDirectories = [$HOME.'/.vim/UltiSnips']
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsListSnippets = '<c-tab>'
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:airline_theme='afterglow'

inoremap <expr> <tab> pumvisible() ? "\<C-n>" : "\<Tab>"

call plug#end()
colorscheme jellybeans
filetype plugin indent on
