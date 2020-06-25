"-------------------------------- Displaying --------------------------------
syntax on                       " Enable syntax highlighting.

set background=dark             " Adjusts the default color groups for dark type.
set t_Co=256	

set number                      " Precede each line with its line number.
set relativenumber              " Show the line number relative to the line with the cursor in front of each line.

set ruler                       " Show the line and column number of the cursor position, separated by a comma.
	
set cmdheight=2                 " Number of screen lines to use for the command-line.

set encoding=UTF-8              " String-encoding used internally and for 'RPC' communication.

set nowrap                      " Lines will not wrap and only part of long lines will be displayed.

set autoindent                  " Copy indent from current line when starting a new line.
filetype plugin indent on       " Enable loading detection, plugin & indent information for specific filetype.

set tabstop=4                   " Number of spaces that a <Tab> in the file counts for.
set softtabstop=4               " Number of spaces that a <Tab> counts for while performing editing operations, like inserting a <Tab> or using <BS>.
set shiftwidth=4                " Number of spaces to use for each step of (auto)indent.
set smarttab                    " When on, a <Tab> in front of a line inserts blanks according to 'shiftwidth'.
set expandtab                   " In Insert mode: Use the appropriate number of spaces to insert a <Tab>.

set conceallevel=0              " text with the 'conceal' syntax attribute :syn-conceal is shown normally.
	
set lazyredraw                  " The screen will not be redrawn while executing macros, registers and other commands that have not been typed.
	
set visualbell                  " Use visual bell instead of beeping.
set noerrorbells                " Ring the bell (beep or screen flash) for error messages.

"-------------------------------- Files & Buffers --------------------------------
set hidden                      " When on, a buffer becomes hidden when it is abandoned.

set nobackup                    " Turn off 'Make a backup before overwriting a file.' ('coc' requirement).
set nowritebackup               " Similiar to above.

set noswapfile                  " Turn off auto create vim's swap files when a command loads a new buffer.

set undolevels=1000             " Maximum number of changes that can be undone.

"-------------------------------- Functionalities --------------------------------
set mouse=a                     " Enables mouse support in all modes.

set history=1000                " A history of ':' commands, and a history of previous search patterns is remembered.
	
set incsearch                   " While typing a search command, show where the pattern, as it was typed so far, matches.
set hlsearch                    " When there is a previous search pattern, highlight all its matches.

set ignorecase                  " Ignore case-sensitive when searching.
set smartcase                   " Override the 'ignorecase' option if the search pattern contains upper case characters.

set timeoutlen=500              " Time in milliseconds to wait for a mapped sequence to complete. (default: 1000)

autocmd FileType * set fo-=t fo-=c fo-=r fo-=o      " Disable following format options:
                                                    "   't' --> Auto wrap text using 'textwidth'.
                                                    "   'c' --> Auto-wrap comments using 'textwidth'.
                                                    "   'r' --> Auto insert current comment leader after hitting <Enter> in Insert mode.
                                                    "   'o' --> Auto insert current comment leader after hitting 'o' or 'O' in Normal mode.

" Triger `autoread` when files changes on disk
" https://unix.stackexchange.com/questions/149209/refresh-changed-content-of-file-opened-in-vim/383044#383044
" Also prevent this autocmd from running when in the following modes:  
"                       'c' --> command-line-editing.
"                       'r', 'rm', 'r?' --> Hit-enter prompt, --more-- promp, :confirm query.
"                       '!' --> shell or external command is executing.
"                       't' --> terminal mode.
" And only run when not in the command-line window.
" https://vi.stackexchange.com/questions/13692/prevent-focusgained-autocmd-running-in-command-line-editing-mode
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI *
        \ if mode() !~ '\v(c|r.?|!|t)' && getcmdwintype() == '' | checktime | endif

" Notification after file change
" https://vi.stackexchange.com/questions/13091/autocmd-event-for-autoread
autocmd FileChangedShellPost *
  \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None
