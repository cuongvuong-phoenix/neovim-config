# NeoVim configurations

## Table of contents

1. [Installation](#installation)
2. [Customized Keyboard Shortcuts](#customized-keyboard-shortcuts)
   - [Core](#core)
   - [Plugins/Extensions](#pluginsextensions)
     - [Conquer of Completion (CoC)](#conquer-of-completion-coc)
     - [CoC Explorer](#coc-explorer)
     - [Fuzzy Finder](#fuzzy-finder)
     - [Fugitive](#fugitive)
     - [Multiple Cursors](#multiple-cursors)
     - [Nerd Commenter](#nerd-commenter)
     - [Vim Surround](#vim-surround)

## Installation

Clone the repository into `~/.config/nvim`

```shell
git clone --depth=1 https://github.com/vuong-cuong-phoenix/neovim-config.git $HOME/.config/nvim
```

## Customized Keyboard Shortcuts

> _LHS_ + _RHS_: Hold _LHS_ first then press _RHS_.

> _LHS_ → _RHS_: Press _LHS_ first (don't need to hold, but has timeout) then press _RHS_.

> _*Essentials*_: Normal + Visual + Select + Operator-pending.

> _Recursived?_: Last key will be the start key of another keybinding (if present).

### Core

| Key binding             | Mode                     | Command                                  |       Recursived?       |
| ----------------------- | ------------------------ | ---------------------------------------- | :---------------------: |
| `Space`                 | _Essentials_             | Vim's _leader_ key                       |  :black_square_button:  |
| `Space` → `n`           | Normal                   | Toggle `hlsearch`                        |  :black_square_button:  |
| `Space` → `-`           | Normal                   | Split into panes _horizontally_          | :ballot_box_with_check: |
| `Space` → `_`           | Normal                   | Split into panes _vertically_            | :ballot_box_with_check: |
| `Ctrl` + `h`            | Normal                   | Navigate to the _left pane_              |  :black_square_button:  |
| `Ctrl` + `j`            | Normal                   | Navigate to the _lower pane_             |  :black_square_button:  |
| `Ctrl` + `k`            | Normal                   | Navigate to the _upper pane_             |  :black_square_button:  |
| `Ctrl` + `l`            | Normal                   | Navigate to the _right pane_             |  :black_square_button:  |
| `Space` → `Shift` + `h` | _Essentials_             | Resize pane to the _left_                | :ballot_box_with_check: |
| `Space` → `Shift` + `j` | _Essentials_             | Resize pane to the _lower side_          | :ballot_box_with_check: |
| `Space` → `Shift` + `k` | _Essentials_             | Resize pane to the _upper side_          | :ballot_box_with_check: |
| `Space` → `Shift` + `l` | _Essentials_             | Resize pane to the _right_               | :ballot_box_with_check: |
| `Tab`                   | Normal                   | Select _next tab_                        |  :black_square_button:  |
| `Shift` + `Tab`         | Normal                   | Select _previous tab_                    |  :black_square_button:  |
| `Alt` + `j`             | Normal + Visual + Select | Move current/selected _area below_       |  :black_square_button:  |
| `Alt` + `k`             | Normal + Visual + Select | Move current/selected _area above_       |  :black_square_button:  |
| `Ctlr` + `c`            | Visual + Select          | Copy selected area to system's clipboard |  :black_square_button:  |
| `Ctlr` + `x`            | Visual + Select          | Cut selected area to system's clipboard  |  :black_square_button:  |
| `Ctlr` + `v`            | _Essentials_             | Paste from system's clipboard            |  :black_square_button:  |

### Plugins/Extensions

#### [Conquer of Completion (CoC)](https://github.com/neoclide/coc.nvim)

| Key binding         | Mode (Condition)                 | Command                                      |       Recursived?       |
| ------------------- | -------------------------------- | -------------------------------------------- | :---------------------: |
| `Tab`               | Insert _(Popup Menu is visible)_ | Move to _next suggestion_                    |  :black_square_button:  |
| `Shift` + `Tab`     | Insert _(Popup Menu is visible)_ | Move to _previous suggestion_                |  :black_square_button:  |
| `Enter`             | Insert _(Popup Menu is visible)_ | Select current suggestion                    |  :black_square_button:  |
| `Ctrl` + `Space`    | Insert                           | Open _Popup Menu_ if CoC find any suggestion |  :black_square_button:  |
| `g` → `d`           | Normal                           | Go to _definition_                           | :ballot_box_with_check: |
| `g` → `y`           | Normal                           | Go to _type's definition_                    | :ballot_box_with_check: |
| `g` → `i`           | Normal                           | Go to _implementation_                       | :ballot_box_with_check: |
| `g` → `r`           | Normal                           | Go to _references_                           | :ballot_box_with_check: |
| `g` → `h`           | Normal                           | Open documentation                           |  :black_square_button:  |
| `Space` → `c` → `r` | Normal                           | Restart CoC's server                         |  :black_square_button:  |
| `Space` → `c` → `f` | Normal + Visual + Select         | Format selected area                         | :ballot_box_with_check: |
| `Space` → `c` → `a` | Normal + Visual + Select         | Run selected codes's action for current file | :ballot_box_with_check: |

#### [CoC Explorer](https://github.com/weirongxu/coc-explorer)

| Key binding   | Mode (Condition)            | Command                                 |      Recursived?      |
| ------------- | --------------------------- | --------------------------------------- | :-------------------: |
| `Ctrl` + `b`  | Normal                      | Open _CoC Explorer_                     | :black_square_button: |
| `?`           | _(CoC Explorer is showing)_ | Open _help_                             | :black_square_button: |
| `*`           | _(CoC Explorer is showing)_ | Toggle Selection                        | :black_square_button: |
| `.`           | _(CoC Explorer is showing)_ | Toggle hidden                           | :black_square_button: |
| `Shift` + `r` | _(CoC Explorer is showing)_ | Refresh                                 | :black_square_button: |
| `q`           | _(CoC Explorer is showing)_ | Quit                                    | :black_square_button: |
| `Esc`         | _(CoC Explorer is showing)_ | Esc                                     | :black_square_button: |
| `h`           | _(CoC Explorer is showing)_ | Collapse folder                         | :black_square_button: |
| `l`           | _(CoC Explorer is showing)_ | Expand folder if possible, else open    | :black_square_button: |
| `r` → `h`     | _(CoC Explorer is showing)_ | Collapse recursively                    | :black_square_button: |
| `r` → `l`     | _(CoC Explorer is showing)_ | Expand recursively                      | :black_square_button: |
| `Backspace`   | _(CoC Explorer is showing)_ | Go to parent directory                  | :black_square_button: |
| `Enter`       | _(CoC Explorer is showing)_ | `cd` to folder is expandable, else open | :black_square_button: |
| `y`           | _(CoC Explorer is showing)_ | Copy file's path                        | :black_square_button: |
| `Shift` + `y` | _(CoC Explorer is showing)_ | Copy file's name                        | :black_square_button: |
| `c`           | _(CoC Explorer is showing)_ | Copy selected files                     | :black_square_button: |
| `x`           | _(CoC Explorer is showing)_ | Cut selected files                      | :black_square_button: |
| `p`           | _(CoC Explorer is showing)_ | Paste selected files                    | :black_square_button: |
| `d`           | _(CoC Explorer is showing)_ | Delete selected files (to trash)        | :black_square_button: |
| `Shift` + `d` | _(CoC Explorer is showing)_ | Delete selected files (forever)         | :black_square_button: |
| `a`           | _(CoC Explorer is showing)_ | Add (create) new file                   | :black_square_button: |
| `Shift` + `a` | _(CoC Explorer is showing)_ | Add (create) new folder                 | :black_square_button: |
| `r`           | _(CoC Explorer is showing)_ | Rename selected file/folder             | :black_square_button: |
| `f`           | _(CoC Explorer is showing)_ | Search for files                        | :black_square_button: |
| `Shift` + `f` | _(CoC Explorer is showing)_ | Search for files recursively            | :black_square_button: |
| `X`           | _(CoC Explorer is showing)_ | Execute System's command                | :black_square_button: |

#### [Fuzzy Finder](https://github.com/junegunn/fzf.vim)

| Key binding     | Mode (Condition)   | Command                                  |      Recursived?      |
| --------------- | ------------------ | ---------------------------------------- | :-------------------: |
| `Ctrl` + `p`    | Normal             | Start fzf to find files/contents         | :black_square_button: |
| `Space` → `b`   | Normal             | Show fzf's buffers                       | :black_square_button: |
| `Space` → `h`   | Normal             | Show fzf's histories                     | :black_square_button: |
| `Ctrl` + `t`    | _(FzF is running)_ | Open selected files as vim's tabs        | :black_square_button: |
| `Ctrl` + `j`    | _(FzF is running)_ | Navigate to _upper file_                 | :black_square_button: |
| `Ctrl` + `k`    | _(FzF is running)_ | Navigate to _lower file_                 | :black_square_button: |
| `Tab`           | _(FzF is running)_ | Multi-select _current file & lower file_ | :black_square_button: |
| `Shift` + `Tab` | _(FzF is running)_ | Multi-select _current file & upper_      | :black_square_button: |

#### [Fugitive](https://github.com/tpope/vim-fugitive)

| Key binding                   | Mode (Condition)                   | Command                         |       Recursived?       |
| ----------------------------- | ---------------------------------- | ------------------------------- | :---------------------: |
| `Space` → `Shift` + `g` → `s` | Normal                             | Open `git status` by _Fugitive_ | :ballot_box_with_check: |
| `s`                           | _(Fugitive git status)_            | Mark file(s) as _Staged_        |  :black_square_button:  |
| `u`                           | _(Fugitive git status)_            | Mark file(s) as _Unstaged_      |  :black_square_button:  |
| `d` → `v`                     | _(Fugitive git status)_            | Open files to solve conflicts   |  :black_square_button:  |
| `Space` → `Shift` + `g` → `h` | Normal _(Fugitive merge conflict)_ | Keep contents of _left side_    | :ballot_box_with_check: |
| `Space` → `Shift` + `g` → `l` | Normal _(Fugitive merge conflict)_ | Keep contents of _right side_   | :ballot_box_with_check: |

#### [Multiple Cursors](https://github.com/terryma/vim-multiple-cursors)

| Key binding                 | Mode (Condition) | Command                    |      Recursived?      |
| --------------------------- | ---------------- | -------------------------- | :-------------------: |
| `Alt` + `d`                 | _Essentials_     | Select _next word_         | :black_square_button: |
| `g` → `Alt` + `d`           | _Essentials_     | Select _next key_          | :black_square_button: |
| `Space` → `Alt` + `d`       | _Essentials_     | Select _all words_         | :black_square_button: |
| `Space` → `g` → `Alt` + `d` | _Essentials_     | Select _all keys_          | :black_square_button: |
| `Alt` + `u`                 | _Essentials_     | Select _previous word/key_ | :black_square_button: |
| `Alt` + `x`                 | _Essentials_     | Skip current word          | :black_square_button: |
| `Esc`                       | _Essentials_     | Quit multi-cursor          | :black_square_button: |

#### [Nerd Commenter](https://github.com/preservim/nerdcommenter)

| Key binding  | Mode (Condition)         | Command                          |       Recursived?       |
| ------------ | ------------------------ | -------------------------------- | :---------------------: |
| `Ctrl` + `/` | Normal + Visual + Select | Toggle comment for selected area | :ballot_box_with_check: |

#### [Vim Surround](https://github.com/tpope/vim-surround)

For more information & examples, go to [author's github](https://github.com/tpope/vim-surround). The following key bindings are only for common usecase.

| Key binding                                     | Mode (Condition) | Command                                          |      Recursived?      |
| ----------------------------------------------- | ---------------- | ------------------------------------------------ | :-------------------: |
| `c` → `s` → `current surround` → `new surround` | _Essentials_     | Change from `current surround` to `new surround` | :black_square_button: |
| `d` → `s` → `current surround`                  | _Essentials_     | Delete `current surround`                        | :black_square_button: |
| `c` → `s` → `t` → `new surround`                | _Essentials_     | Change circularly to `new surround`              | :black_square_button: |

