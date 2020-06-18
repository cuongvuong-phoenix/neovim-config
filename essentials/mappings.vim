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
nnoremap tl :tabnext<CR>
nnoremap th :tabprev<CR>

" Move lines
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Common usual keys
vnoremap <C-c> "+y
vnoremap <C-x> "+x
noremap <C-v> "+gP

