" Enable italic support
highlight Comment cterm=italic gui=italic
let g:onedark_terminal_italics=1
let g:onedark_hide_endofbuffer=1
let g:onedark_termcolors=256

" Enable theme
syntax on
colorscheme onedark

" Checks if terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif

