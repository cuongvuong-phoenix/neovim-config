# NeoVim configurations

## Table of contents

1. [Installation](#installation)
2. [Customized Keyboard Shortcuts](#customized-keyboard-shortcuts)
   - [Core](#core)
   - [Plugins/Extensions](#pluginsextensions)
     - [Multiple Cursors](#multiple-cursors)
     - [Nerd Tree](#nerd-tree)
     - [Conquer of Completion](#conquer-of-completion)
     - [Fuzzy Finder](#fuzzy-finder)
     - [Nerd Commenter](#nerd-commenter)

## Installation

Clone the repository into `~/.config/nvim`

```shell
git clone --depth=1 https://github.com/vuong-cuong-phoenix/neovim-config.git $HOME/.config/nvim
```

## Customized Keyboard Shortcuts

> _LHS_ + _RHS_: Hold _LHS_ first then press _RHS_.

> _LHS_ → _RHS_: Press _LHS_ first (don't need to hold) then press _RHS_.

> _*Essentials*_: Normal + Visual + Select + Operator-pending.

> _Recursived?_: Last key will be the start key of another keybinding (if present).

### Core

| Key binding             | Mode                     | Command                                  |    Recursived?     |
| ----------------------- | ------------------------ | ---------------------------------------- | :----------------: |
| `Space`                 | _Essentials_             | Vim's _leader_ key                       |        :x:         |
| `Space` → `n`           | Normal                   | Toggle _hlsearch_                        |        :x:         |
| `Space` → `-`           | Normal                   | Split into panes _horizontally_          | :heavy_check_mark: |
| `Space` → `_`           | Normal                   | Split into panes _vertically_            | :heavy_check_mark: |
| `Ctrl` + `h`            | Normal                   | Navigate to the _Left pane_              |        :x:         |
| `Ctrl` + `j`            | Normal                   | Navigate to the _Lower pane_             |        :x:         |
| `Ctrl` + `k`            | Normal                   | Navigate to the _Upper pane_             |        :x:         |
| `Ctrl` + `l`            | Normal                   | Navigate to the _Right pane_             |        :x:         |
| `Space` → `Shift` + `h` | _Essentials_             | Resize pane to the _left_                | :heavy_check_mark: |
| `Space` → `Shift` + `j` | _Essentials_             | Resize pane to the _lower side_          | :heavy_check_mark: |
| `Space` → `Shift` + `k` | _Essentials_             | Resize pane to the _upper side_          | :heavy_check_mark: |
| `Space` → `Shift` + `l` | _Essentials_             | Resize pane to the _right_               | :heavy_check_mark: |
| `Tab`                   | Normal                   | Select _next tab_                        |        :x:         |
| `Shift` + `Tab`         | Normal                   | Select _previous tab_                    |        :x:         |
| `Alt` + `j`             | Normal + Visual + Select | Move current/selected _area below_       |        :x:         |
| `Alt` + `k`             | Normal + Visual + Select | Move current/selected _area above_       |        :x:         |
| `Ctlr` + `c`            | Visual + Select          | Copy selected area to system's clipboard |        :x:         |
| `Ctlr` + `x`            | Visual + Select          | Cut selected area to system's clipboard  |        :x:         |
| `Ctlr` + `v`            | _Essentials_             | Paste from system's clipboard            |        :x:         |

### Plugins/Extensions

#### [Multiple Cursors](https://github.com/terryma/vim-multiple-cursors)

| Key binding                 | Mode (Condition) | Command                    | Recursived? |
| --------------------------- | ---------------- | -------------------------- | :---------: |
| `Alt` + `d`                 | _Essentials_     | Select _next word_         |     :x:     |
| `g` → `Alt` + `d`           | _Essentials_     | Select _next key_          |     :x:     |
| `Space` → `Alt` + `d`       | _Essentials_     | Select _all words_         |     :x:     |
| `Space` → `g` → `Alt` + `d` | _Essentials_     | Select _all keys_          |     :x:     |
| `Alt` + `u`                 | _Essentials_     | Select _previous word/key_ |     :x:     |
| `Alt` + `x`                 | _Essentials_     | Skip current word          |     :x:     |
| `Esc`                       | _Essentials_     | Quit multi-cursor          |     :x:     |

#### [Nerd Tree](https://github.com/preservim/nerdtree)

| Key binding  | Mode (Condition) | Command                   |    Recursived?     |
| ------------ | ---------------- | ------------------------- | :----------------: |
| `Ctrl` + `b` | _Essentials_     | Toggle Nerd Tree at `pwd` | :heavy_check_mark: |

#### [Conquer of Completion](https://github.com/neoclide/coc.nvim)

| Key binding         | Mode (Condition)                 | Command                                      |    Recursived?     |
| ------------------- | -------------------------------- | -------------------------------------------- | :----------------: |
| `Tab`               | Insert _(Popup Menu is visible)_ | Move to _next suggestion_                    |        :x:         |
| `Shift` + `Tab`     | Insert _(Popup Menu is visible)_ | Move to _previous suggestion_                |        :x:         |
| `Enter`             | Insert _(Popup Menu is visible)_ | Select current suggestion                    |        :x:         |
| `Ctrl` + `Space`    | Insert                           | Open _Popup Menu_ if CoC find any suggestion |        :x:         |
| `g` → `d`           | Normal                           | Go to _Definition_                           | :heavy_check_mark: |
| `g` → `y`           | Normal                           | Go to _Type's definition_                    | :heavy_check_mark: |
| `g` → `i`           | Normal                           | Go to _Implementation_                       | :heavy_check_mark: |
| `g` → `r`           | Normal                           | Go to _References_                           | :heavy_check_mark: |
| `g` → `h`           | Normal                           | Open Documentation                           |        :x:         |
| `Space` → `c` → `r` | Normal                           | Restart CoC's server                         |        :x:         |
| `Space` → `c` → `f` | Normal + Visual + Select         | Format selected area                         | :heavy_check_mark: |
| `Space` → `c` → `a` | Normal + Visual + Select         | Run selected codes's action for current file | :heavy_check_mark: |

#### [Fuzzy Finder](https://github.com/junegunn/fzf.vim)

| Key binding     | Mode (Condition)   | Command                                  | Recursived? |
| --------------- | ------------------ | ---------------------------------------- | :---------: |
| `Ctrl` + `p`    | Normal             | Start fzf to find files/contents         |     :x:     |
| `Space` → `b`   | Normal             | Show fzf's buffers                       |     :x:     |
| `Space` → `h`   | Normal             | Show fzf's histories                     |     :x:     |
| `Ctrl` + `t`    | _(fzf is running)_ | Open selected files as vim's tabs        |     :x:     |
| `Ctrl` + `j`    | _(fzf is running)_ | Navigate to _upper file_                 |     :x:     |
| `Ctrl` + `k`    | _(fzf is running)_ | Navigate to _lower file_                 |     :x:     |
| `Tab`           | _(fzf is running)_ | Multi-select _current file & lower file_ |     :x:     |
| `Shift` + `Tab` | _(fzf is running)_ | Multi-select _current file & upper_      |     :x:     |

#### [Nerd Commenter](https://github.com/preservim/nerdcommenter)

| Key binding  | Mode (Condition)         | Command                          |    Recursived?     |
| ------------ | ------------------------ | -------------------------------- | :----------------: |
| `Ctrl` + `/` | Normal + Visual + Select | Toggle comment for selected area | :heavy_check_mark: |
