set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

  Plugin 'MarcWeber/vim-addon-mw-utils'
  Plugin 'Shougo/neocomplcache'
  Plugin 'Shougo/neosnippet'
  Plugin 'deris/vim-shot-f'
  Plugin 'fholgado/minibufexpl.vim'
  Plugin 'garbas/vim-snipmate'
  Plugin 'gmarik/Vundle.vim'
  Plugin 'honza/vim-snippets'
  Plugin 'jelera/vim-javascript-syntax'
  Plugin 'majutsushi/tagbar'
  Plugin 'pangloss/vim-javascript'
  Plugin 'romainl/Apprentice'
  Plugin 'scrooloose/nerdcommenter'
  Plugin 'scrooloose/nerdtree'
  Plugin 'scrooloose/syntastic.git'
  Plugin 'tomtom/tlib_vim'
  Plugin 'tpope/vim-markdown'
  Plugin 'tpope/vim-surround.git'
  Plugin 'wikitopian/hardmode'
  Plugin 'sophacles/vim-processing'

call vundle#end()
filetype plugin indent on

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
autocmd BufNewFile,BufReadPost *.tex set textwidth=80

colorscheme apprentice

let g:miniBufExplBRSplit=0 
let g:neocomplcache_enable_at_startup=1 
let g:syntastic_auto_loc_list=1
let g:syntastic_enable_signs=1
let g:neosnippet#enable_snipmate_compatibility=1
let g:syntastic_quiet_messages = {'level': 'warnings'}
let g:syntastic_python_python_exec = '/usr/bin/python3'
let mapleader = ','

map <leader>b :MBEToggle<cr>
map <leader>n :NERDTreeToggle<CR>
map <leader>q :q<cr>
map <leader>s :sh<cr>
map <leader>t :TagbarToggle<CR>
map <leader>w :w!<cr>
map <space> /

set ai
set backspace=2
set cursorline
set expandtab
set ignorecase
set incsearch
set magic
set number
set ruler
set shiftwidth=4
set si
set smartcase
set splitbelow
set splitright
"set t_Co=256
set tabstop=4
set wildignore=*.o,*.obj,*~
set wildmenu

syntax on
