call plug#begin('~/.local/share/nvim/plugged/')

" Themes
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Syntax Highlighting
Plug 'sheerun/vim-polyglot' 

" Syntax Checking
Plug 'scrooloose/syntastic'

" Git wrapper
Plug 'tpope/vim-fugitive'

" Files Finder
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Files Explorer
Plug 'scrooloose/nerdtree'

" Icon for NERDTree
Plug 'ryanoasis/vim-devicons'

" Auto pairing (), {}, [],...
Plug 'jiangmiao/auto-pairs'

" Multiple cursors
Plug 'terryma/vim-multiple-cursors'

" Comment area
Plug 'scrooloose/nerdcommenter'

" Auto save session
Plug 'tpope/vim-obsession'

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

call plug#end()

"---------------- FAST SETTINGS ----------------
" Fix colors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum" 

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

