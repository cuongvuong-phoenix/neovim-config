# NeoVim configurations

## Table of contents

1.  [Installation](#installation)
2.  [Customized Keyboard Shortcuts](#customized-keyboard-shortcuts)
    -   [Core](#core)
    -   [Plugins/Extensions](#pluginsextensions)
        -   [fzf.vim](#fzfvim)
        -   [vim-fugitive](#vim-fugitive)
        -   [vim-gitgutter](#vim-gitgutter)
        -   [vim-multiple-cursors](#vim-multiple-cursors)
        -   [nerdcommenter](#nerdcommenter)
        -   [vim-surround](#vim-surround)
        -   [markdown-preview.nvim](#markdown-previewnvim)
        -   [coc.nvim](#cocnvim)
        -   [coc-explorer](#coc-explorer)

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

| Key binding    | Mode                     | Command                                    |    Recursived?     |
| -------------- | ------------------------ | ------------------------------------------ | :----------------: |
| `Space`        | _Essentials_             | Vim's `leader` key                         | :white_check_mark: |
| `leader` → `n` | Normal                   | Toggle `hlsearch`                          | :white_check_mark: |
| `<`            | Normal + Select          | Tab selected region                        | :white_check_mark: |
| `>`            | Normal + Select          | Un-tab selected region                     | :white_check_mark: |
| `Alt` + `j`    | Normal + Visual + Select | Move current/selected _region below_       | :white_check_mark: |
| `Alt` + `k`    | Normal + Visual + Select | Move current/selected _region above_       | :white_check_mark: |
| `Ctlr` + `s`   | Normal                   | Alternative way to save                    | :white_check_mark: |
| `Ctlr` + `c`   | Visual + Select          | Copy selected region to system's clipboard | :white_check_mark: |
| `Ctlr` + `x`   | Visual + Select          | Cut selected region to system's clipboard  | :white_check_mark: |
| `'` + `"`      | _Essentials_             | Jump to position where last time quitted   | :white_check_mark: |
| `leader` → `-` | Normal                   | Split into panes _horizontally_            | :heavy_check_mark: |
| `leader` → `_` | Normal                   | Split into panes _vertically_              | :heavy_check_mark: |
| `Ctrl` + `h`   | Normal                   | Navigate to the _left pane_                | :white_check_mark: |
| `Ctrl` + `j`   | Normal                   | Navigate to the _lower pane_               | :white_check_mark: |
| `Ctrl` + `k`   | Normal                   | Navigate to the _upper pane_               | :white_check_mark: |
| `Ctrl` + `l`   | Normal                   | Navigate to the _right pane_               | :white_check_mark: |
| `Alt` + `h`    | _Essentials_             | Resize pane to the _left_                  | :white_check_mark: |
| `Alt` + `j`    | _Essentials_             | Resize pane to the _lower side_            | :white_check_mark: |
| `Alt` + `k`    | _Essentials_             | Resize pane to the _upper side_            | :white_check_mark: |
| `Alt` + `l`    | _Essentials_             | Resize pane to the _right_                 | :white_check_mark: |
| `t` → `l`      | Normal                   | Select _next tab_                          | :white_check_mark: |
| `t` → `h`      | Normal                   | Select _previous tab_                      | :white_check_mark: |

### Plugins/Extensions

#### [fzf.vim](https://github.com/junegunn/fzf.vim)

| Key binding     | Mode (Condition)   | Command                                |    Recursived?     |
| --------------- | ------------------ | -------------------------------------- | :----------------: |
| `Ctrl` + `p`    | Normal             | Start **_FzF_** to find files/contents | :white_check_mark: |
| `leader` → `b`  | Normal             | Show **_FzF_**'s buffers               | :white_check_mark: |
| `leader` → `h`  | Normal             | Show **_FzF_**'s histories             | :white_check_mark: |
| `Ctrl` + `t`    | (_FzF_ is running) | Open selected files as vim's tabs      | :white_check_mark: |
| `Ctrl` + `j`    | (_FzF_ is running) | Navigate to _upper file_               | :white_check_mark: |
| `Ctrl` + `k`    | (_FzF_ is running) | Navigate to _lower file_               | :white_check_mark: |
| `Tab`           | (_FzF_ is running) | Multi-select _current file_            | :white_check_mark: |
| `Shift` + `Tab` | (_FzF_ is running) | Cancel Multi-select of _current file_  | :white_check_mark: |

#### [vim-fugitive](https://github.com/tpope/vim-fugitive)

| Key binding          | Mode (Condition)              | Command                             |    Recursived?     |
| -------------------- | ----------------------------- | ----------------------------------- | :----------------: |
| `leader` → `g` → `s` | Normal                        | Open `git status` by **_Fugitive_** | :heavy_check_mark: |
| `g` → `q`            | (_Fugitive_ is running)       | Quit **_Fugitive_**                 | :white_check_mark: |
| `s`                  | (_Fugitive_ git status mode)  | Mark file(s) as _Staged_            | :white_check_mark: |
| `u`                  | (_Fugitive_ git status mode)  | Mark file(s) as _Unstaged_          | :white_check_mark: |
| `d` → `v`            | (_Fugitive_ git status mode)  | Open files to solve conflicts       | :white_check_mark: |
| `leader` → `g` → `h` | Normal (_Fugitive_ diff mode) | Keep contents of _left side_        | :heavy_check_mark: |
| `leader` → `g` → `l` | Normal (_Fugitive_ diff mode) | Keep contents of _right side_       | :heavy_check_mark: |

#### [vim-gitgutter](https://github.com/airblade/vim-gitgutter)

| Key binding          | Mode (Condition) | Command                     |    Recursived?     |
| -------------------- | ---------------- | --------------------------- | :----------------: |
| `leader` → `g` → `j` | Normal           | Jump to the next _Hunk_     | :heavy_check_mark: |
| `leader` → `g` → `k` | Normal           | Jump to the previous _Hunk_ | :heavy_check_mark: |

#### [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors)

| Key binding                  | Mode (Condition) | Command                    |    Recursived?     |
| ---------------------------- | ---------------- | -------------------------- | :----------------: |
| `Alt` + `d`                  | _Essentials_     | Select _next word_         | :white_check_mark: |
| `g` → `Alt` + `d`            | _Essentials_     | Select _next key_          | :white_check_mark: |
| `leader` → `Alt` + `d`       | _Essentials_     | Select _all words_         | :white_check_mark: |
| `leader` → `g` → `Alt` + `d` | _Essentials_     | Select _all keys_          | :white_check_mark: |
| `Alt` + `u`                  | _Essentials_     | Select _previous word/key_ | :white_check_mark: |
| `Alt` + `x`                  | _Essentials_     | Skip current word          | :white_check_mark: |
| `Esc`                        | _Essentials_     | Quit multi-cursor          | :white_check_mark: |

#### [nerdcommenter](https://github.com/preservim/nerdcommenter)

| Key binding  | Mode (Condition)         | Command                            |    Recursived?     |
| ------------ | ------------------------ | ---------------------------------- | :----------------: |
| `Ctrl` + `/` | Normal + Visual + Select | Toggle comment for selected region | :heavy_check_mark: |

#### [vim-surround](https://github.com/tpope/vim-surround)

For more information & examples, go to [author's github](https://github.com/tpope/vim-surround). The following key bindings are only for common usecase.

| Key binding                                     | Mode (Condition) | Command                                          |    Recursived?     |
| ----------------------------------------------- | ---------------- | ------------------------------------------------ | :----------------: |
| `Shift` + `s` + `new surround`                  | Visual + Select  | Surround selected region with `new surround`     | :white_check_mark: |
| `c` → `s` → `current surround` → `new surround` | _Essentials_     | Change from `current surround` to `new surround` | :white_check_mark: |
| `d` → `s` → `current surround`                  | _Essentials_     | Delete `current surround`                        | :white_check_mark: |
| `c` → `s` → `t` → `new surround`                | _Essentials_     | Change circularly to `new surround`              | :white_check_mark: |

#### [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim)

| Key binding | Mode (Condition) | Command                 |    Recursived?     |
| ----------- | ---------------- | ----------------------- | :----------------: |
| `F12`       | _Essentials_     | Toggle markdown preview | :white_check_mark: |

#### [coc.nvim](https://github.com/neoclide/coc.nvim)

| Key binding          | Mode (Condition)                 | Command                                                |    Recursived?     |
| -------------------- | -------------------------------- | ------------------------------------------------------ | :----------------: |
| `Tab`                | Insert (_Popup Menu_ is visible) | Move to _next suggestion_                              | :white_check_mark: |
| `Shift` + `Tab`      | Insert (_Popup Menu_ is visible) | Move to _previous suggestion_                          | :white_check_mark: |
| `Enter`              | Insert (_Popup Menu_ is visible) | Select current suggestion                              | :white_check_mark: |
| `Ctrl` + `leader`    | Insert                           | Open **_Popup Menu_** if **_CoC_** find any suggestion | :white_check_mark: |
| `g` → `d`            | Normal                           | Go to _definition_                                     | :heavy_check_mark: |
| `g` → `y`            | Normal                           | Go to _type's definition_                              | :heavy_check_mark: |
| `g` → `i`            | Normal                           | Go to _implementation_                                 | :heavy_check_mark: |
| `g` → `r`            | Normal                           | Go to _references_                                     | :heavy_check_mark: |
| `g` → `h`            | Normal                           | Open documentation                                     | :white_check_mark: |
| `leader` → `r` → `n` | Normal                           | Rename symbol                                          | :white_check_mark: |
| `leader` → `c` → `r` | Normal                           | Restart **_CoC_**'s server                             | :white_check_mark: |
| `leader` → `c` → `f` | Normal + Visual + Select         | Format selected region                                 | :heavy_check_mark: |
| `g` → `a`            | Normal + Visual + Select         | Run selected codes's action for current file           | :heavy_check_mark: |

#### [coc-explorer](https://github.com/weirongxu/coc-explorer)

| Key binding   | Mode (Condition)            | Command                                 |    Recursived?     |
| ------------- | --------------------------- | --------------------------------------- | :----------------: |
| `Ctrl` + `b`  | Normal                      | Open **_CoC Explorer_**                 | :white_check_mark: |
| `?`           | (_CoC Explorer_ is showing) | Open _help_                             | :white_check_mark: |
| `*`           | (_CoC Explorer_ is showing) | Toggle Selection                        | :white_check_mark: |
| `.`           | (_CoC Explorer_ is showing) | Toggle hidden                           | :white_check_mark: |
| `Shift` + `r` | (_CoC Explorer_ is showing) | Refresh                                 | :white_check_mark: |
| `q`           | (_CoC Explorer_ is showing) | Quit                                    | :white_check_mark: |
| `Esc`         | (_CoC Explorer_ is showing) | Esc                                     | :white_check_mark: |
| `t`           | (_CoC Explorer_ is showing) | Open selected file(s) in new tab(s)     | :white_check_mark: |
| `h`           | (_CoC Explorer_ is showing) | Collapse folder                         | :white_check_mark: |
| `l`           | (_CoC Explorer_ is showing) | Expand folder if possible, else open    | :white_check_mark: |
| `r` → `h`     | (_CoC Explorer_ is showing) | Collapse recursively                    | :white_check_mark: |
| `r` → `l`     | (_CoC Explorer_ is showing) | Expand recursively                      | :white_check_mark: |
| `Backspace`   | (_CoC Explorer_ is showing) | Go to parent directory                  | :white_check_mark: |
| `Enter`       | (_CoC Explorer_ is showing) | `cd` to folder is expandable, else open | :white_check_mark: |
| `y`           | (_CoC Explorer_ is showing) | Copy file's path                        | :white_check_mark: |
| `Shift` + `y` | (_CoC Explorer_ is showing) | Copy file's name                        | :white_check_mark: |
| `c`           | (_CoC Explorer_ is showing) | Copy selected file(s)                   | :white_check_mark: |
| `x`           | (_CoC Explorer_ is showing) | Cut selected file(s)                    | :white_check_mark: |
| `p`           | (_CoC Explorer_ is showing) | Paste selected file(s)                  | :white_check_mark: |
| `d`           | (_CoC Explorer_ is showing) | Delete selected file(s) (to trash)      | :white_check_mark: |
| `Shift` + `d` | (_CoC Explorer_ is showing) | Delete selected file(s) (forever)       | :white_check_mark: |
| `a`           | (_CoC Explorer_ is showing) | Add (create) new file                   | :white_check_mark: |
| `Shift` + `a` | (_CoC Explorer_ is showing) | Add (create) new folder                 | :white_check_mark: |
| `r`           | (_CoC Explorer_ is showing) | Rename selected file(s)/folder(s)       | :white_check_mark: |
| `f`           | (_CoC Explorer_ is showing) | Search for file(s)                      | :white_check_mark: |
| `Shift` + `f` | (_CoC Explorer_ is showing) | Search for file(s) recursively          | :white_check_mark: |
| `X`           | (_CoC Explorer_ is showing) | Execute System's command                | :white_check_mark: |
