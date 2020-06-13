"-------------------------------- Airline --------------------------------
"---------------- Settings ----------------
let g:airline_powerline_fonts = 1
let g:airline_theme='onedark'

let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#left_sep = " "
" let g:airline#extensions#tabline#left_alt_sep = "|"
" let g:airline#extensions#tabline#right_sep = ""
" let g:airline#extensions#tabline#right_alt_sew = "|"
let g:airline#extensions#tabline#formatter = "unique_tail"

"-------------------------------- Syntastic --------------------------------
"---------------- Settings ----------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"-------------------------------- CoC --------------------------------
"---------------- Settings ----------------
set hidden " Some servers have issues with backup files, see #649 set nobackup set nowritebackup "

" Better display for messages 
set cmdheight=2 

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

set shortmess+=c

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

"---------------- Key bindings ----------------
" Check if previous column is space
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1] =~# '\s'
endfunction

inoremap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : (<SID>check_back_space() ? "\<Tab>" : coc#refresh())
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<C-h>"

" Use <CR> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <CR> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use <c-space> to trigger completion.
inoremap <silent><expr> <C-space> coc#refresh()

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Show documentation in preview windows
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

nnoremap <silent> gh :call <SID>show_documentation()<CR>

" Restart when some extensions get wonky
nnoremap <silent> <leader>cr :<C-u>CocRestart<CR> 

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Format selected text/lines
nmap <leader>cf  <Plug>(coc-format-selected)
vmap <leader>cf  <Plug>(coc-format-selected) 

" run code actions
vmap <leader>ca  <Plug>(coc-codeaction-selected)
nmap <leader>ca  <Plug>(coc-codeaction-selected)

"-------------------------------- coc-json --------------------------------
"---------------- Settings ----------------
" Get correct comment highlighting in .json files
autocmd FileType json syntax match Comment +\/\/.\+$+

autocmd BufRead,BufNewFile tsconfig.json set filetype=jsonc

"-------------------------------- coc-explorer --------------------------------
"---------------- Key bindings ----------------
nmap <C-b> :CocCommand explorer --toggle <CR>

"-------------------------------- FzF --------------------------------
"---------------- Settings ----------------
" Open fzf in a floating window
let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'border': 'sharp', 'highlight': 'Todo' } }

" Change fzf's default command and option in vim
let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'
let $FZF_DEFAULT_COMMAND='rg --files --hidden -g "!{.git, node_modules}/*"'

" Customize fzf colors to match vim's color scheme
let g:fzf_colors = {
            \ 'fg':      ['fg', 'Normal'],
            \ 'bg':      ['bg', 'Normal'],
            \ 'hl':      ['fg', 'Comment'],
            \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
            \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
            \ 'hl+':     ['fg', 'Statement'],
            \ 'info':    ['fg', 'PreProc'],
            \ 'border':  ['fg', 'Ignore'],
            \ 'prompt':  ['fg', 'Conditional'],
            \ 'pointer': ['fg', 'Exception'],
            \ 'marker':  ['fg', 'Keyword'],
            \ 'spinner': ['fg', 'Label'],
            \ 'header':  ['fg', 'Comment'],
            \ }

" Setting :Files
command! -bang -nargs=? -complete=dir Files
            \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)

" Get text in files with :Rg
command! -bang -nargs=* Rg
            \ call fzf#vim#grep(
            \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
            \   fzf#vim#with_preview(), <bang>0)


"---------------- Key bindings ----------------
nnoremap <C-p> :Files<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>h :History<CR>

"-------------------------------- Fugitive --------------------------------
"---------------- Key bindings ----------------
" Open Git status
nmap <leader>Gs :Git<CR>
" Keep the content of left side, abort right side
nmap <leader>Gh :diffget //2<CR>
" Keep the content of right side, abort left side
nmap <leader>Gl :diffget //3<CR>

"-------------------------------- Git Gutter --------------------------------
"---------------- Settings ----------------
highlight GitGutterAdd    guifg=#98C379 ctermfg=2
highlight GitGutterChange guifg=#BBBB00 ctermfg=3
highlight GitGutterDelete guifg=#E06C75 ctermfg=1

" Always enable
let g:gitgutter_enabled = 1

" Disblae plugin's mapping
let g:gitgutter_map_keys = 0

" Disable line highlighting
let g:gitgutter_highlight_lines = 0

" Change symbols
" let g:gitgutter_sign_added = 'xx'
" let g:gitgutter_sign_modified = 'yy'
" let g:gitgutter_sign_removed = 'zz'
" let g:gitgutter_sign_removed_first_line = '^^'
" let g:gitgutter_sign_modified_removed = 'ww'

"---------------- Key bindings ----------------
nmap ) <Plug>(GitGutterNextHunk)
nmap ( <Plug>(GitGutterPrevHunk)

"-------------------------------- Multi-Curosr --------------------------------
"---------------- Key bindings ----------------
" Disable default key bindings
let g:multi_cursor_use_default_mapping=0

" New key bindings
let g:multi_cursor_start_word_key      = '<A-d>'
let g:multi_cursor_select_all_word_key = '<leader><A-d>'
let g:multi_cursor_start_key           = 'g<A-d>'
let g:multi_cursor_select_all_key      = 'g<leader><A-d>'
let g:multi_cursor_next_key            = '<A-d>'
let g:multi_cursor_prev_key            = '<A-u>'
let g:multi_cursor_skip_key            = '<A-x>'
let g:multi_cursor_quit_key            = '<Esc>'

"-------------------------------- NERDCommenter --------------------------------
"---------------- Settings ----------------
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

"---------------- Key bindings ----------------
nmap <C-_> <Plug>NERDCommenterToggle
vmap <C-_> <Plug>NERDCommenterToggle<CR>gv

"-------------------------------- Markdown Preview --------------------------------
nmap <F12> <Plug>MarkdownPreviewToggle

"-------------------------------- Hexokinase --------------------------------
" Style
let g:Hexokinase_highlighters = ['backgroundfull']

" Refresh whenever Leaving Insert mode
let g:Hexokinase_refreshEvents = ['InsertLeave']
