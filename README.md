# NeoVim configurations

## Table of contents

1. [Installation](#installation)
2. [Customized Keyboard Shortcuts](#customized-keyboard-shortcuts)
   - [Core](#core)
   - [Extensions](#extensions)
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

> _Essentials_: Normal + Visual + Select + Operator-pending

### Core

| Key binding           | Modes                    | Command                                         | Can be recursived? |
| --------------------- | ------------------------ | ----------------------------------------------- | ------------------ |
| **Space**             | Essentials               | Vim's leader key                                | [ ]                |
| **Space** + n         | Normal                   | Toggle _hlsearch_                               | [ ]                |
| **Space** + -         | Normal                   | Split into panes horizontally                   | [x]                |
| **Space** + \_        | Normal                   | Split into panes vertically                     | [x]                |
| Ctrl + h              | Normal                   | Navigate to the Left pane                       | [ ]                |
| Ctrl + j              | Normal                   | Navigate to the Lower pane                      | [ ]                |
| Ctrl + k              | Normal                   | Navigate to the Upper pane                      | [ ]                |
| Ctrl + l              | Normal                   | Navigate to the Right pane                      | [ ]                |
| **Space** + Shift + h | Essentials               | Resize pane to the left                         | [x]                |
| **Space** + Shift + j | Essentials               | Resize pane to the lower side                   | [x]                |
| **Space** + Shift + k | Essentials               | Resize pane to the upper side                   | [x]                |
| **Space** + Shift + l | Essentials               | Resize pane to the right                        | [x]                |
| Tab                   | Normal                   | Select next tab                                 | [ ]                |
| Shift + Tab           | Normal                   | Select previous tab                             | [ ]                |
| Alt + j               | Normal + Visual + Select | Move current/selected area below                | [ ]                |
| Alt + k               | Normal + Visual + Select | Move current/selected area above                | [ ]                |
| Ctlr + c              | Visual + Select          | Copy selected area to system's clipboard        | [ ]                |
| Ctlr + x              | Visual + Select          | Cut selected area to system's clipboard         | [ ]                |
| Ctlr + v              | Essentials               | Paste from system's clipboard to current cursor | [ ]                |

### Extensions

#### [Multiple Cursors](https://github.com/terryma/vim-multiple-cursors)

| Key binding            | Modes & Conditions | Command                  | Can be recursived? |
| ---------------------- | ------------------ | ------------------------ | ------------------ |
| Alt + d                | Essentials         | Select next word         | [ ]                |
| **Space** + Alt + d    | Essentials         | Select all words         | [ ]                |
| g + Alt + d            | Essentials         | Select next key          | [ ]                |
| **Space** + g +Alt + d | Essentials         | Select all keys          | [ ]                |
| Alt + u                | Essentials         | Select previous word/key | [ ]                |
| Alt + x                | Essentials         | Skip current word        | [ ]                |
| Esc                    | Essentials         | Quit multi-cursor        | [ ]                |

#### [Nerd Tree](https://github.com/preservim/nerdtree)

| Key binding | Modes & Condition | Command                 | Can be recursived? |
| ----------- | ----------------- | ----------------------- | ------------------ |
| Ctrl + b    | Essentials        | Toggle Nerd Tree at pwd | [x]                |

#### [Conquer of Completion](https://github.com/neoclide/coc.nvim)

| Key binding       | Modes (Conditions)             | Command                                             | Can be recursived? |
| ----------------- | ------------------------------ | --------------------------------------------------- | ------------------ |
| Tab               | Insert (Popup Menu is visible) | Move to next suggestion                             | [ ]                |
| Shift + Tab       | Insert (Popup Menu is visible) | Move to previous suggestion                         | [ ]                |
| Enter             | Insert (Popup Menu is visible) | Select current suggestion                           | [ ]                |
| Ctrl + Space      | Insert                         | Open Popup Menu if CoC find any                     | [ ]                |
| g + d             | Normal                         | Go to definition                                    | [x]                |
| g + y             | Normal                         | Go to type's definition                             | [x]                |
| g + i             | Normal                         | Go to implementation                                | [x]                |
| g + r             | Normal                         | Go to references                                    | [x]                |
| g + h             | Normal                         | Open Documentation (Popup or another vim's pane)    | [ ]                |
| **Space** + c + r | Normal                         | Restart CoC's server                                | [ ]                |
| **Space** + c + f | Normal + Visual + Select       | Format selected area                                | [x]                |
| **Space** + c + a | Normal + Visual + Select       | Get and run selected code's action for current file | [x]                |

#### [Fuzzy Finder](https://github.com/junegunn/fzf.vim)

| Key binding   | Modes & Conditions | Command                                 | Can be recursived? |
| ------------- | ------------------ | --------------------------------------- | ------------------ |
| Ctrl + p      | Normal             | Start fzf to find files/contents        | [ ]                |
| **Space** + b | Normal             | Show fzf's buffers                      | [ ]                |
| **Space** + h | Normal             | Show fzf's histories                    | [ ]                |
| Ctrl + t      | (fzf is running)   | Open selected files in other vim's tabs | [ ]                |
| Ctrl + j      | (fzf is running)   | Navigate to upper file                  | [ ]                |
| Ctrl + k      | (fzf is running)   | Navigate to lower file                  | [ ]                |
| Tab           | (fzf is running)   | Select current file & lower file        | [ ]                |
| Shift + Tab   | (fzf is running)   | Select current file & upper             | [ ]                |

#### [Nerd Commenter](https://github.com/preservim/nerdcommenter)

| Key binding | Modes & Conditions       | Command                          | Can be recursived? |
| ----------- | ------------------------ | -------------------------------- | ------------------ |
| Ctrl + /    | Normal + Visual + Select | Toggle comment for selected area | [x]                |
