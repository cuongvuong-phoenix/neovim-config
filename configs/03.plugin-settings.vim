"-------------------------------- Multi-Curosr --------------------------------
let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<A-d>'
let g:multi_cursor_select_all_word_key = '<leader><A-d>'
let g:multi_cursor_start_key           = 'g<A-d>'
let g:multi_cursor_select_all_key      = 'g<leader><A-d>'
let g:multi_cursor_next_key            = '<A-d>'
let g:multi_cursor_prev_key            = '<A-u>'
let g:multi_cursor_skip_key            = '<A-x>'
let g:multi_cursor_quit_key            = '<Esc>'

"-------------------------------- Nerd Tree --------------------------------
" Ctrl + n to toggle Nerd tree
map <C-b> :NERDTreeToggle<CR>

" Auto close if only nerd tree left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Change arrow symbol
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

let g:NERDTreePatternMatchHighlightFullName = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__', 'node_modules']
let g:NERDTreeShowBookmarks=1

"-------------------------------- CoC --------------------------------
set hidden " Some servers have issues with backup files, see #649 set nobackup set nowritebackup "
" Better display for messages 
set cmdheight=2 

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

set shortmess+=c

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

"-------------------------------- FzF --------------------------------
nnoremap <C-p> :Files<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>h :History<CR>
