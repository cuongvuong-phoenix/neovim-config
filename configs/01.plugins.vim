call plug#begin('~/.local/share/nvim/plugged/')

" Theme
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Syntax Highlighting
Plug 'sheerun/vim-polyglot' 
" Syntax Checking
Plug 'scrooloose/syntastic'

" Fuzzy Finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Files Explorer
Plug 'scrooloose/nerdtree'

" Intellisense Engine
Plug 'neoclide/coc.nvim', {'branch': 'release'}
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
    \ ]


" Utilities
Plug 'ryanoasis/vim-devicons'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'terryma/vim-multiple-cursors'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-obsession'

call plug#end()

"---------------- FAST SETTINGS ----------------
" One Dark Theme
colorscheme onedark
set background=dark
set termguicolors

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme='onedark'

let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#left_sep = " "
" let g:airline#extensions#tabline#left_alt_sep = "|"
" let g:airline#extensions#tabline#right_sep = ""
" let g:airline#extensions#tabline#right_alt_sew = "|"
let g:airline#extensions#tabline#formatter = "unique_tail"

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

