"---------------- Settings ----------------
highlight Quote ctermbg=109 guifg=#83a598

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
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"

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
nmap <leader>cf <Plug>(coc-format-selected)
vmap <leader>cf <Plug>(coc-format-selected) 

" Run code actions
vmap <silent> ga <Plug>(coc-codeaction-selected)
nmap <silent> ga <Plug>(coc-codeaction-selected)

" List Coc's commands
nnoremap <silent> <leader>fc :CocCommand<CR>
