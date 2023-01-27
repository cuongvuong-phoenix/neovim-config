call plug#begin('~/.local/share/nvim/plugged/')
"---------------- ESSENTIALS ----------------
" Themes.
Plug 'joshdick/onedark.vim'
" Plug 'kaicataldo/material.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Syntax Highlighting.
Plug 'sheerun/vim-polyglot' 

" Syntax Checking.
" Plug 'scrooloose/syntastic'

"---------------- UTILITIES ----------------
" Files finder.
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Git's extensions.
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Auto pairing (), {}, [],...
Plug 'jiangmiao/auto-pairs'

" Multiple cursors.
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" Comment area.
Plug 'scrooloose/nerdcommenter'

" Auto save session.
Plug 'tpope/vim-obsession'

" Change surround character.
Plug 'tpope/vim-surround'

" Reopen files at last edit position.
" Plug 'farmergreg/vim-lastplace'

" Color highlighting document text.
" Plug 'lilydjwg/colorizer'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }

" Preview markdown.
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

" Repeat plugin's mapping.
Plug 'tpope/vim-repeat'

" Change the working directory to the project root .
Plug 'airblade/vim-rooter'

" Turn on FocusGained setting when inside tmux.
Plug 'tmux-plugins/vim-tmux-focus-events'

" Intergrated with Tmux.
" Plug 'christoomey/vim-tmux-navigator'

"---------------- Intellisense Engine ----------------
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/jsonc.vim'

let g:coc_global_extensions = [
            \ 'coc-vimlsp',
            \ 'coc-java',
            \ 'coc-python',
            \ 'coc-rust-analyzer',
            \ 'coc-go',
            \ 'coc-tsserver',
            \ 'coc-json', 
            \ 'coc-css',
            \ 'coc-html',
            \ 'coc-yaml',
            \ 
            \ 'coc-prettier', 
            \ 'coc-eslint', 
            \ 'coc-tailwindcss',
            \ 'coc-vetur',
            \ 'coc-jest',
            \
            \ 'coc-explorer',
            \ 'coc-snippets',
            \ 'coc-pairs',
            \ 'coc-highlight',
            \ ]
            " Uncomment these plugins when you want to use any of them.
            " \ 'coc-clangd',
            " \ 'coc-angular',
            " \ 'coc-flutter',
            " \ 'coc-cssmodules',
            " \ 'coc-cmake',
            " \ 'coc-omnisharp',
            " \ 'coc-pyright',
            " \ 'coc-emmet',
            " \ 'coc-sql',
            " \ 'coc-xml',
            " \ 'coc-tabnine',

" Golang.
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
 
call plug#end()

