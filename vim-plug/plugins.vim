call plug#begin('~/.local/share/nvim/plugged/')
"---------------- ESSENTIALS ----------------
" Themes
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Syntax Highlighting
Plug 'sheerun/vim-polyglot' 

" Syntax Checking
Plug 'scrooloose/syntastic'

" " Intergrated with Tmux
" Plug 'christoomey/vim-tmux-navigator'

"---------------- UTILITIES ----------------
" Files finder
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Git's extensions
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Auto pairing (), {}, [],...
Plug 'jiangmiao/auto-pairs'

" Multiple cursors
Plug 'terryma/vim-multiple-cursors'

" Comment area
Plug 'scrooloose/nerdcommenter'

" Auto save session
Plug 'tpope/vim-obsession'

" Change surround character
Plug 'tpope/vim-surround'

" " Reopen files at last edit position
" Plug 'farmergreg/vim-lastplace'

" Color highlighting document text
" Plug 'lilydjwg/colorizer'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }

" Preview markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

" Repeat plugin's mapping
Plug 'tpope/vim-repeat'

" Change the working directory to the project root 
Plug 'airblade/vim-rooter'

"---------------- Intellisense Engine ----------------
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/jsonc.vim'

let g:coc_global_extensions = [
            \ 'coc-vimlsp',
            \ 'coc-clangd',
            \ 'coc-cmake',
            \ 'coc-java',
            \ 'coc-omnisharp',
            \ 'coc-python',
            \ 'coc-go',
            \ 'coc-tsserver',
            \ 'coc-json', 
            \ 'coc-css',
            \ 'coc-cssmodules',
            \ 'coc-html',
            \ 'coc-yaml',
            \ 'coc-xml',
            \ 'coc-sql',
            \ 
            \ 'coc-prettier', 
            \ 'coc-eslint', 
            \ 'coc-tailwindcss',
            \ 'coc-vetur',
            \ 'coc-angular',
            \ 'coc-flutter',
            \ 'coc-jest',
            \
            \ 'coc-explorer',
            \ 'coc-snippets',
            \ 'coc-pairs',
            \ 'coc-highlight',
            \ 'coc-tabnine',
            \ 'coc-pyright',
            \ ]

" Dart
Plug 'dart-lang/dart-vim-plugin' 
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'

call plug#end()
