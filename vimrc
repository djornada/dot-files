set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  Bundle 'Shougo/neocomplcache'
  Bundle 'Shougo/neosnippet'
  Bundle 'Shougo/neosnippet-snippets'
  Bundle 'jelera/vim-javascript-syntax'
  Plugin 'fholgado/minibufexpl.vim'
  Plugin 'gmarik/Vundle.vim'
  Plugin 'majutsushi/tagbar'
  Plugin 'pangloss/vim-javascript'
  Plugin 'romainl/Apprentice'
  Plugin 'scrooloose/nerdcommenter'
  Plugin 'scrooloose/nerdtree'
  Plugin 'scrooloose/syntastic.git'
  Plugin 'tpope/vim-surround.git'
call vundle#end()
filetype plugin indent on

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

colorscheme apprentice
let g:syntastic_auto_loc_list=1
let g:syntastic_enable_signs=1
let g:syntastic_quiet_messages = {'level': 'warnings'}
let g:neocomplcache_enable_at_startup = 1 

let mapleader = ','

imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)

map <leader>b :MBEToggle<cr>
map <leader>n :NERDTreeToggle<CR>
map <leader>q :q<cr>
map <leader>s :sh<cr>
map <leader>t :TagbarToggle<CR>
map <leader>w :w!<cr>
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
set wildignore=*.o,*.obj,*~
set wildmenu
syntax on
