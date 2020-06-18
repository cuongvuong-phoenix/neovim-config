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
nmap <leader>gj <Plug>(GitGutterNextHunk)
nmap <leader>gk <Plug>(GitGutterPrevHunk)

