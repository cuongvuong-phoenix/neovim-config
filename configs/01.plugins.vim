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

" Intergrated with Tmux
Plug 'christoomey/vim-tmux-navigator' 

" Intellisense Engine (Conquer of Completion)
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/jsonc.vim'

let g:coc_global_extensions = [
            \ 'coc-python',
            \ 'coc-tsserver',
            \ 'coc-vetur',
            \ 'coc-flutter',
            \ 'coc-tailwindcss',
            \ 'coc-jest',
            \ 'coc-yaml',
            \ 'coc-prettier', 
            \ 'coc-eslint', 
            \ 'coc-json', 
            \ 'coc-pairs',
            \ 'coc-snippets',
            \ 'coc-explorer' ]

"---------------- ULTILITIES ----------------
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

