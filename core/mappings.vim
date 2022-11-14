"-------------------------------- KEY BINDING --------------------------------
" Reset LEADER to 'Space'
noremap <Space> <Nop>
let mapleader = "\<Space>"

" Turn off hlsearch
noremap <silent> <leader>[ :set hlsearch!<CR> 

" Easily tab when using > & <
vnoremap < <gv
vnoremap > >gv

" Move lines above/below
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Common usual keys
nnoremap <C-s> :w<CR>
nnoremap <C-q> :q!<CR>
vnoremap <C-c> "+y
vnoremap <C-x> "+x
noremap <C-v> "+gP

vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

" Split panes
nmap <leader>- :split<CR><C-w>w
nmap <leader>_ :vsplit<CR><C-w>w

" Navigate between Pane
noremap <C-h> <C-W>h
noremap <C-j> <C-w>j
noremap <C-k> <C-W>k
noremap <C-l> <C-w>l

" Space + hjkl to resize Pane
nnoremap <leader>j :resize -2<CR>
nnoremap <leader>k :resize +2<CR>
nnoremap <leader>h :vertical resize -2<CR>
nnoremap <leader>l :vertical resize +2<CR>

" Navigate between Tabs
nnoremap tl :tabnext<CR>
nnoremap th :tabprev<CR>

