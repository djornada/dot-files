set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  Plugin 'gmarik/Vundle.vim'

  Plugin 'bling/vim-airline'
  Plugin 'fholgado/minibufexpl.vim'
  Plugin 'garbas/vim-snipmate'
  Plugin 'honza/vim-snippets'
  Plugin 'jelera/vim-javascript-syntax'
  Plugin 'majutsushi/tagbar'
  Plugin 'marcWeber/vim-addon-mw-utils'
  Plugin 'pangloss/vim-javascript'
  Plugin 'romainl/Apprentice'
  Plugin 'scrooloose/nerdcommenter'
  Plugin 'scrooloose/nerdtree'
  Plugin 'scrooloose/syntastic.git'
  Plugin 'shougo/neocomplcache'
  Plugin 'shougo/neosnippet'
  Plugin 'sophacles/vim-processing'
  Plugin 'tomtom/tlib_vim'
  Plugin 'tpope/vim-fugitive'
  Plugin 'tpope/vim-markdown'
  Plugin 'tpope/vim-surround.git'
  Plugin 'yggdroot/indentLine'
  Plugin 'itchyny/screensaver.vim'
call vundle#end()

filetype plugin indent on

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
autocmd BufNewFile,BufReadPost *.tex set filetype=tex 

colorscheme apprentice

let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#eclim#enabled = 1

let g:miniBufExplBRSplit=0 

let g:neocomplcache_enable_at_startup=1 
let g:neosnippet#enable_snipmate_compatibility=1

let g:syntastic_auto_loc_list=1
let g:syntastic_enable_signs=1
let g:syntastic_python_python_exec = '/usr/bin/python3'
let g:syntastic_quiet_messages = {'level': 'warnings'}

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
set shiftwidth=8
set si
set smartcase
set softtabstop=8
set splitbelow
set splitright
set t_Co=235
set tabstop=8
set textwidth=80
set wildignore=*.o,*.obj,*~
set wildmenu

syntax on
"gvim stuff
set guioptions-=m "remove menu bar
set guioptions-=T "remove tool bar
set guioptions-=r "remove right hand scroll bar
set guioptions-=L "remove left hand scroll bar
