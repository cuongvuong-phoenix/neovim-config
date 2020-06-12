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

" Intellisense Engine (Conquer of Completion)
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/jsonc.vim'

let g:coc_global_extensions = [
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

"---------------- UTILITIES ----------------
" Files finder
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Git wrapper
Plug 'tpope/vim-fugitive'

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
Plug 'lilydjwg/colorizer'

" Preview markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

call plug#end()

"-------------------------------- QUICK SETTINGS --------------------------------
" Fix colors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum" 

" Setting themes
if (has("termguicolors"))
    set termguicolors
endif

colorscheme onedark
set background=dark

