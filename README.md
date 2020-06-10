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

| Key binding             | Mode                     | Command                                  |    Recursived?     |
| ----------------------- | ------------------------ | ---------------------------------------- | :----------------: |
| `Space`                 | _Essentials_             | Vim's _leader_ key                       | :white_check_mark: |
| `Space` → `n`           | Normal                   | Toggle `hlsearch`                        | :white_check_mark: |
| `Space` → `-`           | Normal                   | Split into panes _horizontally_          | :heavy_check_mark: |
| `Space` → `_`           | Normal                   | Split into panes _vertically_            | :heavy_check_mark: |
| `Ctrl` + `h`            | Normal                   | Navigate to the _left pane_              | :white_check_mark: |
| `Ctrl` + `j`            | Normal                   | Navigate to the _lower pane_             | :white_check_mark: |
| `Ctrl` + `k`            | Normal                   | Navigate to the _upper pane_             | :white_check_mark: |
| `Ctrl` + `l`            | Normal                   | Navigate to the _right pane_             | :white_check_mark: |
| `Space` → `Shift` + `h` | _Essentials_             | Resize pane to the _left_                | :heavy_check_mark: |
| `Space` → `Shift` + `j` | _Essentials_             | Resize pane to the _lower side_          | :heavy_check_mark: |
| `Space` → `Shift` + `k` | _Essentials_             | Resize pane to the _upper side_          | :heavy_check_mark: |
| `Space` → `Shift` + `l` | _Essentials_             | Resize pane to the _right_               | :heavy_check_mark: |
| `Tab`                   | Normal                   | Select _next tab_                        | :white_check_mark: |
| `Shift` + `Tab`         | Normal                   | Select _previous tab_                    | :white_check_mark: |
| `Alt` + `j`             | Normal + Visual + Select | Move current/selected _area below_       | :white_check_mark: |
| `Alt` + `k`             | Normal + Visual + Select | Move current/selected _area above_       | :white_check_mark: |
| `Ctlr` + `c`            | Visual + Select          | Copy selected area to system's clipboard | :white_check_mark: |
| `Ctlr` + `x`            | Visual + Select          | Cut selected area to system's clipboard  | :white_check_mark: |
| `Ctlr` + `v`            | _Essentials_             | Paste from system's clipboard            | :white_check_mark: |

### Plugins/Extensions

#### [Conquer of Completion (CoC)](https://github.com/neoclide/coc.nvim)

| Key binding         | Mode (Condition)                 | Command                                      |    Recursived?     |
| ------------------- | -------------------------------- | -------------------------------------------- | :----------------: |
| `Tab`               | Insert _(Popup Menu is visible)_ | Move to _next suggestion_                    | :white_check_mark: |
| `Shift` + `Tab`     | Insert _(Popup Menu is visible)_ | Move to _previous suggestion_                | :white_check_mark: |
| `Enter`             | Insert _(Popup Menu is visible)_ | Select current suggestion                    | :white_check_mark: |
| `Ctrl` + `Space`    | Insert                           | Open _Popup Menu_ if CoC find any suggestion | :white_check_mark: |
| `g` → `d`           | Normal                           | Go to _definition_                           | :heavy_check_mark: |
| `g` → `y`           | Normal                           | Go to _type's definition_                    | :heavy_check_mark: |
| `g` → `i`           | Normal                           | Go to _implementation_                       | :heavy_check_mark: |
| `g` → `r`           | Normal                           | Go to _references_                           | :heavy_check_mark: |
| `g` → `h`           | Normal                           | Open documentation                           | :white_check_mark: |
| `Space` → `c` → `r` | Normal                           | Restart CoC's server                         | :white_check_mark: |
| `Space` → `c` → `f` | Normal + Visual + Select         | Format selected area                         | :heavy_check_mark: |
| `Space` → `c` → `a` | Normal + Visual + Select         | Run selected codes's action for current file | :heavy_check_mark: |

#### [CoC Explorer](https://github.com/weirongxu/coc-explorer)

| Key binding   | Mode (Condition)            | Command                                 |    Recursived?     |
| ------------- | --------------------------- | --------------------------------------- | :----------------: |
| `Ctrl` + `b`  | Normal                      | Open _CoC Explorer_                     | :white_check_mark: |
| `?`           | _(CoC Explorer is showing)_ | Open _help_                             | :white_check_mark: |
| `*`           | _(CoC Explorer is showing)_ | Toggle Selection                        | :white_check_mark: |
| `.`           | _(CoC Explorer is showing)_ | Toggle hidden                           | :white_check_mark: |
| `Shift` + `r` | _(CoC Explorer is showing)_ | Refresh                                 | :white_check_mark: |
| `q`           | _(CoC Explorer is showing)_ | Quit                                    | :white_check_mark: |
| `Esc`         | _(CoC Explorer is showing)_ | Esc                                     | :white_check_mark: |
| `h`           | _(CoC Explorer is showing)_ | Collapse folder                         | :white_check_mark: |
| `l`           | _(CoC Explorer is showing)_ | Expand folder if possible, else open    | :white_check_mark: |
| `r` → `h`     | _(CoC Explorer is showing)_ | Collapse recursively                    | :white_check_mark: |
| `r` → `l`     | _(CoC Explorer is showing)_ | Expand recursively                      | :white_check_mark: |
| `Backspace`   | _(CoC Explorer is showing)_ | Go to parent directory                  | :white_check_mark: |
| `Enter`       | _(CoC Explorer is showing)_ | `cd` to folder is expandable, else open | :white_check_mark: |
| `y`           | _(CoC Explorer is showing)_ | Copy file's path                        | :white_check_mark: |
| `Shift` + `y` | _(CoC Explorer is showing)_ | Copy file's name                        | :white_check_mark: |
| `c`           | _(CoC Explorer is showing)_ | Copy selected files                     | :white_check_mark: |
| `x`           | _(CoC Explorer is showing)_ | Cut selected files                      | :white_check_mark: |
| `p`           | _(CoC Explorer is showing)_ | Paste selected files                    | :white_check_mark: |
| `d`           | _(CoC Explorer is showing)_ | Delete selected files (to trash)        | :white_check_mark: |
| `Shift` + `d` | _(CoC Explorer is showing)_ | Delete selected files (forever)         | :white_check_mark: |
| `a`           | _(CoC Explorer is showing)_ | Add (create) new file                   | :white_check_mark: |
| `Shift` + `a` | _(CoC Explorer is showing)_ | Add (create) new folder                 | :white_check_mark: |
| `r`           | _(CoC Explorer is showing)_ | Rename selected file/folder             | :white_check_mark: |
| `f`           | _(CoC Explorer is showing)_ | Search for files                        | :white_check_mark: |
| `Shift` + `f` | _(CoC Explorer is showing)_ | Search for files recursively            | :white_check_mark: |
| `X`           | _(CoC Explorer is showing)_ | Execute System's command                | :white_check_mark: |

#### [Fuzzy Finder](https://github.com/junegunn/fzf.vim)

| Key binding     | Mode (Condition)   | Command                                  |    Recursived?     |
| --------------- | ------------------ | ---------------------------------------- | :----------------: |
| `Ctrl` + `p`    | Normal             | Start fzf to find files/contents         | :white_check_mark: |
| `Space` → `b`   | Normal             | Show fzf's buffers                       | :white_check_mark: |
| `Space` → `h`   | Normal             | Show fzf's histories                     | :white_check_mark: |
| `Ctrl` + `t`    | _(FzF is running)_ | Open selected files as vim's tabs        | :white_check_mark: |
| `Ctrl` + `j`    | _(FzF is running)_ | Navigate to _upper file_                 | :white_check_mark: |
| `Ctrl` + `k`    | _(FzF is running)_ | Navigate to _lower file_                 | :white_check_mark: |
| `Tab`           | _(FzF is running)_ | Multi-select _current file & lower file_ | :white_check_mark: |
| `Shift` + `Tab` | _(FzF is running)_ | Multi-select _current file & upper_      | :white_check_mark: |

#### [Fugitive](https://github.com/tpope/vim-fugitive)

| Key binding                   | Mode (Condition)                   | Command                         |    Recursived?     |
| ----------------------------- | ---------------------------------- | ------------------------------- | :----------------: |
| `Space` → `Shift` + `g` → `s` | Normal                             | Open `git status` by _Fugitive_ | :heavy_check_mark: |
| `s`                           | _(Fugitive git status)_            | Mark file(s) as _Staged_        | :white_check_mark: |
| `u`                           | _(Fugitive git status)_            | Mark file(s) as _Unstaged_      | :white_check_mark: |
| `d` → `v`                     | _(Fugitive git status)_            | Open files to solve conflicts   | :white_check_mark: |
| `Space` → `Shift` + `g` → `h` | Normal _(Fugitive merge conflict)_ | Keep contents of _left side_    | :heavy_check_mark: |
| `Space` → `Shift` + `g` → `l` | Normal _(Fugitive merge conflict)_ | Keep contents of _right side_   | :heavy_check_mark: |

#### [Multiple Cursors](https://github.com/terryma/vim-multiple-cursors)

| Key binding                 | Mode (Condition) | Command                    |    Recursived?     |
| --------------------------- | ---------------- | -------------------------- | :----------------: |
| `Alt` + `d`                 | _Essentials_     | Select _next word_         | :white_check_mark: |
| `g` → `Alt` + `d`           | _Essentials_     | Select _next key_          | :white_check_mark: |
| `Space` → `Alt` + `d`       | _Essentials_     | Select _all words_         | :white_check_mark: |
| `Space` → `g` → `Alt` + `d` | _Essentials_     | Select _all keys_          | :white_check_mark: |
| `Alt` + `u`                 | _Essentials_     | Select _previous word/key_ | :white_check_mark: |
| `Alt` + `x`                 | _Essentials_     | Skip current word          | :white_check_mark: |
| `Esc`                       | _Essentials_     | Quit multi-cursor          | :white_check_mark: |

#### [Nerd Commenter](https://github.com/preservim/nerdcommenter)

| Key binding  | Mode (Condition)         | Command                          |    Recursived?     |
| ------------ | ------------------------ | -------------------------------- | :----------------: |
| `Ctrl` + `/` | Normal + Visual + Select | Toggle comment for selected area | :heavy_check_mark: |

#### [Vim Surround](https://github.com/tpope/vim-surround)

For more information & examples, go to [author's github](https://github.com/tpope/vim-surround). The following key bindings are only for common usecase.

| Key binding                                     | Mode (Condition) | Command                                          |    Recursived?     |
| ----------------------------------------------- | ---------------- | ------------------------------------------------ | :----------------: |
| `c` → `s` → `current surround` → `new surround` | _Essentials_     | Change from `current surround` to `new surround` | :white_check_mark: |
| `d` → `s` → `current surround`                  | _Essentials_     | Delete `current surround`                        | :white_check_mark: |
| `c` → `s` → `t` → `new surround`                | _Essentials_     | Change circularly to `new surround`              | :white_check_mark: |
