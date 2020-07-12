" Settings
highlight Comment cterm=italic gui=italic
let g:material_terminal_italics = 1

" Enable theme
let g:material_theme_style = 'ocean'
colorscheme material

" Checks if terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif
