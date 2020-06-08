"-------------------------------- GENERAL --------------------------------
syntax on

set autoindent
filetype plugin on
filetype plugin indent on

set hidden

set nobackup
set nowritebackup
set noswapfile
set nowrap

set mouse=a

set encoding=UTF-8
set undolevels=1000

set history=1000

set incsearch
set hlsearch

set number
set relativenumber
set ignorecase
set smartcase

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set lazyredraw

set visualbell
set noerrorbells

"-------------------------------- KEY BINDING --------------------------------
" Reset LEADER
noremap <Space> <Nop>
let mapleader = "\<Space>"

" Turn off hlsearch
noremap <leader>n :set hlsearch!<CR> 
" Split panes
nmap <leader>- :split<CR><C-w>w
nmap <leader>_ :vsplit<CR><C-w>w

" Navigate between Pane
noremap <C-h> <C-W>h
noremap <C-j> <C-w>j
noremap <C-k> <C-W>k
noremap <C-l> <C-w>l

" Resize Pane
map <leader>H <C-w><
map <leader>L <C-w>>
map <leader>K <C-w>+
map <leader>J <C-w>-

" Navigate between Tabs
nnoremap <Tab> :tabnext<CR>
nnoremap <S-Tab> :tabprev<CR>

" Move lines
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Common usual keys
vnoremap <C-c> "+y
vnoremap <C-x> "+x
noremap <C-v> "+gP
