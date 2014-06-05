execute pathogen#infect()
filetype indent on
filetype plugin on 

colorscheme apprentice

let g:syntastic_auto_loc_list=1
let g:syntastic_disabled_filetypes=['html']
let g:syntastic_enable_signs=1
let g:syntastic_quiet_messages = {'level': 'warnings'}
let mapleader = ','

map <leader>n :NERDTreeToggle<CR>
map <leader>t :TagbarToggle<CR>
map <space> /

nmap <leader>q :q<cr>
nmap <leader>s :sh<cr>
nmap <leader>w :w!<cr>

set ai
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
set t_Co=256
set tabstop=2
set wildmenu
syntax on
