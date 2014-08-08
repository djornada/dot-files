set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  Plugin 'gmarik/Vundle.vim'
  Plugin 'romainl/Apprentice'
  Plugin 'scrooloose/nerdtree'
  Plugin 'scrooloose/nerdcommenter'
  Plugin 'scrooloose/syntastic.git'
  Plugin 'tpope/vim-surround.git'
  Plugin 'majutsushi/tagbar'
  Plugin 'pangloss/vim-javascript'
  Bundle 'jelera/vim-javascript-syntax'
  Bundle 'MarcWeber/vim-addon-mw-utils'
  Bundle 'tomtom/tlib_vim'
  Bundle 'garbas/vim-snipmate'
  Bundle 'honza/vim-snippets' 
  Plugin 'fholgado/minibufexpl.vim'
call vundle#end()
filetype plugin indent on

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

colorscheme apprentice
let g:syntastic_auto_loc_list=1
let g:syntastic_enable_signs=1
let g:syntastic_quiet_messages = {'level': 'warnings'}
let g:snipMate = {}
let g:snipMate.scope_aliases = {}
let g:snipMate.scope_aliases['ruby'] = 'ruby,ruby-rails,ruby-1.9'
let mapleader = ','

map <leader>n :NERDTreeToggle<CR>
map <leader>q :q<cr>
map <leader>s :sh<cr>
map <leader>t :TagbarToggle<CR>
map <leader>w :w!<cr>
map <leader>b :MBEToggle<cr>
map <space> /
set ai
set backspace=2
set expandtab
set ignorecase
set incsearch
set magic
set number
set ruler
set shiftwidth=4
set si
set smartcase
set splitright
set t_Co=256
set tabstop=2
set wildmenu
set wildignore=*.o,*.obj,*~
syntax on
