set nocompatible
set number
set nobackup
set noswapfile
set showcmd
set laststatus=2
setlocal spell
set spelllang=en_us

call plug#begin('~/.vim/plugged')
Plug'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_general_viewer='okular'
let g:vimtex_view_general_options='--unique file:@pdf\#src:@line@tex'
let g:vimtex_quickfix_mode=1
let g:vimtex_quickfix_open_on_warning=0
let g:vimtex_index_disable=1

Plug 'tmhedberg/simpylfold'
Plug 'vim-scripts/indentpython.vim'
Plug 'romainl/apprentice'
Plug 'danilo-augusto/vim-afterglow'
Plug 'ervandew/supertab'
Plug 'valloric/youcompleteme'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'altercation/vim-colors-solarized'
Plug 'puremourning/vimspector'
Plug 'wycats/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'hdima/python-syntax'
Plug 'python-mode/python-mode'
Plug 'scrooloose/syntastic'
Plug 'sirver/ultisnips'
Plug 'christoomey/vim-tmux-navigator'
Plug 'honza/vim-snippets'
Plug 'w0rp/ale'
let g:UltiSnipsSnippetDirectories = [$HOME.'/.vim/UltiSnips']
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsListSnippets = '<c-tab>'
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:airline_theme='afterglow'

call plug#end()

colorscheme apprentice
filetype plugin indent on

