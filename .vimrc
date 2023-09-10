syntax on
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

augroup LaTeX
  autocmd!
  autocmd FileType tex setlocal noautoindent
augroup END

augroup lexical
  autocmd!
  autocmd FileType markdown,mkd call lexical#init()
  autocmd FileType textile call lexical#init()
  autocmd FileType text call lexical#init({ 'spell': 0 })
  autocmd FileType tex call lexical#init()
augroup END

autocmd FileType c,cpp,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>
autocmd FileType c ClangFormatAutoEnable

call plug#begin('~/.vim/plugged')
Plug 'rhysd/vim-clang-format'
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
Plug 'tmhedberg/simpylfold'
Plug 'vim-scripts/indentpython.vim'
Plug 'romainl/apprentice'
Plug 'reedes/vim-lexical'
let g:lexical#spell = 1
let g:lexical#spelllang = ['en_us','en_ca',]
let g:lexical#thesaurus = ['~/.vim/thesaurus/mthesaur.txt',]
let g:lexical#dictionary = ['/usr/share/dict/words',]
let g:lexical#spellfile = ['~/.vim/spell/en.utf-8.add',]
Plug 'danilo-augusto/vim-afterglow'
Plug 'ervandew/supertab'
" Plug 'valloric/youcompleteme'
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
