"-------------------------------- Essentials --------------------------------
for f in split(globpath("~/.config/nvim/essentials", "*.vim"), '\n')
    execute "source" f
endfor

"-------------------------------- Vim-plug --------------------------------
source $HOME/.config/nvim/vim-plug/plugins.vim

"-------------------------------- Themes --------------------------------
source $HOME/.config/nvim/themes/onedark.vim

"-------------------------------- Configs --------------------------------
for f in split(globpath("~/.config/nvim/configs", "*.vim"), '\n')
    execute "source" f
endfor

"-------------------------------- 'coc' configs --------------------------------
for f in split(globpath("~/.config/nvim/configs/coc", "*.vim"), '\n')
    execute "source" f
endfor

