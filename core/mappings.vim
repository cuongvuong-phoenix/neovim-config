"-------------------------------- KEY BINDING --------------------------------
" Reset LEADER to `Space`
noremap <Space> <Nop>
let mapleader = "\<Space>"

""""""""""""""""""""""""""""""""""""""""
" Navigating
""""""""""""""""""""""""""""""""""""""""
" Have `j` and `k` navigate visual lines rather than logical ones
noremap <expr> j (v:count? 'j' : 'gj')
noremap <expr> k (v:count? 'k' : 'gk')

""""""""""""""""""""""""""""""""""""""""
" Clipboard
""""""""""""""""""""""""""""""""""""""""
vnoremap <C-c> "+y
vnoremap <C-x> "+x
noremap <C-v> "+gP
inoremap <C-v> <ESC>"+gPa

" Find selected
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

""""""""""""""""""""""""""""""""""""""""
" Line-based editing
""""""""""""""""""""""""""""""""""""""""
" Easy tabbing when using `>` & `<` while in Visual mode
vnoremap < <gv
vnoremap > >gv

" Move lines above/below
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

""""""""""""""""""""""""""""""""""""""""
" Panes/Tabs
""""""""""""""""""""""""""""""""""""""""
" Save & Quit
nnoremap <C-s> :w<CR>
nnoremap <C-q> :q!<CR>

" Split panes
nmap <leader>- :split<CR><C-w>w
nmap <leader>_ :vsplit<CR><C-w>w

" Navigate between panes
noremap <C-h> <C-W>h
noremap <C-j> <C-w>j
noremap <C-k> <C-W>k
noremap <C-l> <C-w>l

" Resize pane
nnoremap <leader>j :resize -2<CR>
nnoremap <leader>k :resize +2<CR>
nnoremap <leader>h :vertical resize -2<CR>
nnoremap <leader>l :vertical resize +2<CR>

" Navigate between tabs
nnoremap tl :tabnext<CR>
nnoremap th :tabprev<CR>

""""""""""""""""""""""""""""""""""""""""
" [O]ptions
""""""""""""""""""""""""""""""""""""""""
" Toggle search highlight
noremap <silent> <leader>[ :set hlsearch! hlsearch?<CR>

