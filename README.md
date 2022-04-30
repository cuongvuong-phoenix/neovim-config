# NeoVim configurations

## Installation

1. Clone the repository into `~/.config/nvim`:

   ```shell
   git clone --depth=1 https://github.com/vuong-cuong-phoenix/neovim-config.git $HOME/.config/nvim
   ```

2. Install `vim-plug`:

   ```shell
   sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
   ```

3. Open `nvim` and `:PlugInstall` to install all the plugins.

## Customized Keyboard Shortcuts

> _LHS_ + _RHS_: Hold _LHS_ then press _RHS_ in the same time.
> _LHS_ → _RHS_: Press _LHS_ first (don't need to hold, but has timeout) then press _RHS_.
> **Essentials**: Normal + Visual + Select + Operator-pending.
> _Recursived?_: Last key will be the start key of another keybinding (if present).

### Core

| Key binding                       | Mode                     | Command                                    |    Recursived?     |
| --------------------------------- | ------------------------ | ------------------------------------------ | :----------------: |
| <kbd>Space</kbd>                  | _Essentials_             | Vim's <kbd>leader</kbd> key                | :white_check_mark: |
| <kbd>leader</kbd> → <kbd>[</kbd>  | Normal                   | Toggle <kbd>hlsearch</kbd>                 | :white_check_mark: |
| <kbd><</kbd>                      | Normal + Select          | Tab selected region                        | :white_check_mark: |
| <kbd>></kbd>                      | Normal + Select          | Un-tab selected region                     | :white_check_mark: |
| <kbd>Alt</kbd> + <kbd>j</kbd>     | Normal + Visual + Select | Move current/selected _region below_       | :white_check_mark: |
| <kbd>Alt</kbd> + <kbd>k</kbd>     | Normal + Visual + Select | Move current/selected _region above_       | :white_check_mark: |
| <kbd>Ctlr</kbd> + <kbd>s</kbd>    | Normal                   | **_\| :w \|_** Alternative way to save     | :white_check_mark: |
| <kbd>Ctlr</kbd> + <kbd>q</kbd>    | Normal                   | **_\| :q! \|_** Quit without saving        | :white_check_mark: |
| <kbd>Ctlr</kbd> + <kbd>c</kbd>    | Visual + Select          | Copy selected region to system's clipboard | :white_check_mark: |
| <kbd>Ctlr</kbd> + <kbd>x</kbd>    | Visual + Select          | Cut selected region to system's clipboard  | :white_check_mark: |
| <kbd>'</kbd> + <kbd>"</kbd>       | _Essentials_             | Jump to position where last time quitted   | :white_check_mark: |
| <kbd>leader</kbd> → <kbd>-</kbd>  | Normal                   | Split into panes _horizontally_            | :heavy_check_mark: |
| <kbd>leader</kbd> → <kbd>\_</kbd> | Normal                   | Split into panes _vertically_              | :heavy_check_mark: |
| <kbd>Ctrl</kbd> + <kbd>h</kbd>    | Normal                   | Navigate to the _left pane_                | :white_check_mark: |
| <kbd>Ctrl</kbd> + <kbd>j</kbd>    | Normal                   | Navigate to the _lower pane_               | :white_check_mark: |
| <kbd>Ctrl</kbd> + <kbd>k</kbd>    | Normal                   | Navigate to the _upper pane_               | :white_check_mark: |
| <kbd>Ctrl</kbd> + <kbd>l</kbd>    | Normal                   | Navigate to the _right pane_               | :white_check_mark: |
| <kbd>Space</kbd> + <kbd>h</kbd>   | _Essentials_             | Resize pane to the _left_                  | :white_check_mark: |
| <kbd>Space</kbd> + <kbd>j</kbd>   | _Essentials_             | Resize pane to the _lower side_            | :white_check_mark: |
| <kbd>Space</kbd> + <kbd>k</kbd>   | _Essentials_             | Resize pane to the _upper side_            | :white_check_mark: |
| <kbd>Space</kbd> + <kbd>l</kbd>   | _Essentials_             | Resize pane to the _right_                 | :white_check_mark: |
| <kbd>t</kbd> → <kbd>l</kbd>       | Normal                   | Select _next tab_                          | :white_check_mark: |
| <kbd>t</kbd> → <kbd>h</kbd>       | Normal                   | Select _previous tab_                      | :white_check_mark: |

### Plugins/Extensions

#### [fzf.vim](https://github.com/junegunn/fzf.vim)

| Key binding                                     | Mode (Condition)   | Command                                |    Recursived?     |
| ----------------------------------------------- | ------------------ | -------------------------------------- | :----------------: |
| <kbd>Ctrl</kbd> + <kbd>p</kbd>                  | Normal             | Start **_FzF_** to find files/contents | :white_check_mark: |
| <kbd>leader</kbd> → <kbd>f</kbd> → <kbd>b</kbd> | Normal             | Show all buffers                       | :white_check_mark: |
| <kbd>leader</kbd> → <kbd>f</kbd> → <kbd>h</kbd> | Normal             | Show command histories                 | :white_check_mark: |
| <kbd>Ctrl</kbd> + <kbd>t</kbd>                  | (_FzF_ is running) | Open selected files as vim's tabs      | :white_check_mark: |
| <kbd>Ctrl</kbd> + <kbd>j</kbd>                  | (_FzF_ is running) | Navigate to _upper file_               | :white_check_mark: |
| <kbd>Ctrl</kbd> + <kbd>k</kbd>                  | (_FzF_ is running) | Navigate to _lower file_               | :white_check_mark: |
| <kbd>Tab</kbd>                                  | (_FzF_ is running) | Multi-select _current file_            | :white_check_mark: |
| <kbd>Shift</kbd> + <kbd>Tab</kbd>               | (_FzF_ is running) | Cancel Multi-select of _current file_  | :white_check_mark: |

#### [vim-fugitive](https://github.com/tpope/vim-fugitive)

> _fugitive-object_: Fugitive objects are either work tree files or Git revisions as defined in the "SPECIFYING REVISIONS" section in the git-rev-parse man page.

| Key binding                                                      | Mode (Condition)                             | Command                                                                               |    Recursived?     |
| ---------------------------------------------------------------- | -------------------------------------------- | ------------------------------------------------------------------------------------- | :----------------: |
| <kbd>leader</kbd> → <kbd>g</kbd> → <kbd>s</kbd>                  | Normal                                       | **\| :Gstatus \|** Open **_Git Status_** by **_Fugitive_**                            | :heavy_check_mark: |
| <kbd>g</kbd> → <kbd>q</kbd>                                      | (_Fugitive_ is running)                      | Quit **_Fugitive_** _(:Git)_                                                          | :white_check_mark: |
| <kbd>Enter</kbd>                                                 | (_Git Status_ & cursor at _fugitive-object_) | **\| :Gedit: \|** Edit the selected _fugitive-object_                                 | :white_check_mark: |
| <kbd>c</kbd> → <kbd>c</kbd>                                      | (_Git Status_)                               | **\| :Gcommit \|** Commit _Staged_ file(s)                                            | :white_check_mark: |
| <kbd>s</kbd> → <kbd>Enter</kbd>                                  | (_Git Status_ & cursor at _'Push:'_ line)    | **\| :Git push ... \|** Push to remote in _'Push:'_ line                              | :white_check_mark: |
| <kbd>=</kbd>                                                     | (_Git Status_ & cursor at _fugitive-object_) | Toggle detailed changes of the selected _fugitive-object_                             | :white_check_mark: |
| <kbd>s</kbd>                                                     | (_Git Status_ & cursor at _fugitive-object_) | Mark the selected _fugitive-object_ as _Staged_                                       | :white_check_mark: |
| <kbd>u</kbd>                                                     | (_Git Status_ & cursor at _fugitive-object_) | Mark the selected _fugitive-object_ as _Unstaged_                                     | :white_check_mark: |
| <kbd>d</kbd> → <kbd>v</kbd>                                      | (_Git Status_ & cursor at _fugitive-object_) | Perform _Git diff_ mode against the selected _fugitive-object_ & split _vertically_   | :white_check_mark: |
| <kbd>d</kbd> → <kbd>s</kbd>                                      | (_Git Status_ & cursor at _fugitive-object_) | Perform _Git diff_ mode against the selected _fugitive-object_ & split _horizontally_ | :white_check_mark: |
| <kbd>leader</kbd> → <kbd>g</kbd> → <kbd>h</kbd>                  | Normal (_Git Diff_ mode)                     | Keep contents of the _left side_                                                      | :heavy_check_mark: |
| <kbd>leader</kbd> → <kbd>g</kbd> → <kbd>l</kbd>                  | Normal (_Git Diff_ mode)                     | Keep contents of the _right side_                                                     | :heavy_check_mark: |
| <kbd>Ctrl</kbd> + <kbd>w</kbd> → <kbd>Shift</kbd> + <kbd>o</kbd> | Normal (_Git Diff_ mode)                     | Save file & quit **_Git Diff_** mode                                                  | :heavy_check_mark: |

#### [vim-gitgutter](https://github.com/airblade/vim-gitgutter)

| Key binding                                     | Mode (Condition) | Command                     |    Recursived?     |
| ----------------------------------------------- | ---------------- | --------------------------- | :----------------: |
| <kbd>leader</kbd> → <kbd>g</kbd> → <kbd>j</kbd> | Normal           | Jump to the next _Hunk_     | :heavy_check_mark: |
| <kbd>leader</kbd> → <kbd>g</kbd> → <kbd>k</kbd> | Normal           | Jump to the previous _Hunk_ | :heavy_check_mark: |

#### [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors)

| Key binding                                                      | Mode (Condition) | Command                    |    Recursived?     |
| ---------------------------------------------------------------- | ---------------- | -------------------------- | :----------------: |
| <kbd>Alt</kbd> + <kbd>d</kbd>                                    | _Essentials_     | Select _next word_         | :white_check_mark: |
| <kbd>g</kbd> → <kbd>Alt</kbd> + <kbd>d</kbd>                     | _Essentials_     | Select _next key_          | :white_check_mark: |
| <kbd>leader</kbd> → <kbd>Alt</kbd> + <kbd>d</kbd>                | _Essentials_     | Select _all words_         | :white_check_mark: |
| <kbd>leader</kbd> → <kbd>g</kbd> → <kbd>Alt</kbd> + <kbd>d</kbd> | _Essentials_     | Select _all keys_          | :white_check_mark: |
| <kbd>Alt</kbd> + <kbd>u</kbd>                                    | _Essentials_     | Select _previous word/key_ | :white_check_mark: |
| <kbd>Alt</kbd> + <kbd>x</kbd>                                    | _Essentials_     | Skip current word          | :white_check_mark: |
| <kbd>Esc</kbd>                                                   | _Essentials_     | Quit multi-cursor          | :white_check_mark: |

#### [nerdcommenter](https://github.com/preservim/nerdcommenter)

| Key binding                    | Mode (Condition)         | Command                            |    Recursived?     |
| ------------------------------ | ------------------------ | ---------------------------------- | :----------------: |
| <kbd>Ctrl</kbd> + <kbd>/</kbd> | Normal + Visual + Select | Toggle comment for selected region | :heavy_check_mark: |

#### [vim-surround](https://github.com/tpope/vim-surround)

For more information & examples, go to [author's github](https://github.com/tpope/vim-surround). The following key bindings are only for common usecase.

| Key binding                                                                         | Mode (Condition) | Command                                                            |    Recursived?     |
| ----------------------------------------------------------------------------------- | ---------------- | ------------------------------------------------------------------ | :----------------: |
| <kbd>Shift</kbd> + <kbd>s</kbd> + <kbd>new surround</kbd>                           | Visual + Select  | Surround selected region with <kbd>new surround</kbd>              | :white_check_mark: |
| <kbd>c</kbd> → <kbd>s</kbd> → <kbd>current surround</kbd> → <kbd>new surround</kbd> | _Essentials_     | Change from <kbd>current surround</kbd> to <kbd>new surround</kbd> | :white_check_mark: |
| <kbd>d</kbd> → <kbd>s</kbd> → <kbd>current surround</kbd>                           | _Essentials_     | Delete <kbd>current surround</kbd>                                 | :white_check_mark: |
| <kbd>c</kbd> → <kbd>s</kbd> → <kbd>t</kbd> → <kbd>new surround</kbd>                | _Essentials_     | Change circularly to <kbd>new surround</kbd>                       | :white_check_mark: |

#### [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim)

| Key binding    | Mode (Condition) | Command                 |    Recursived?     |
| -------------- | ---------------- | ----------------------- | :----------------: |
| <kbd>F12</kbd> | _Essentials_     | Toggle markdown preview | :white_check_mark: |

#### [coc.nvim](https://github.com/neoclide/coc.nvim)

| Key binding                                     | Mode (Condition)                 | Command                                                |    Recursived?     |
| ----------------------------------------------- | -------------------------------- | ------------------------------------------------------ | :----------------: |
| <kbd>Tab</kbd>                                  | Insert (_Popup Menu_ is visible) | Move to _next suggestion_                              | :white_check_mark: |
| <kbd>Shift</kbd> + <kbd>Tab</kbd>               | Insert (_Popup Menu_ is visible) | Move to _previous suggestion_                          | :white_check_mark: |
| <kbd>Ctrl</kbd> + <kbd>j</kbd>                  | Insert (_Popup Menu_ is visible) | Move to _next suggestion_                              | :white_check_mark: |
| <kbd>Ctrl</kbd> + <kbd>k</kbd>                  | Insert (_Popup Menu_ is visible) | Move to _previous suggestion_                          | :white_check_mark: |
| <kbd>Enter</kbd>                                | Insert (_Popup Menu_ is visible) | Select current suggestion                              | :white_check_mark: |
| <kbd>Ctrl</kbd> + <kbd>leader</kbd>             | Insert                           | Open **_Popup Menu_** if **_CoC_** find any suggestion | :white_check_mark: |
| <kbd>g</kbd> → <kbd>d</kbd>                     | Normal                           | Go to _definition_                                     | :heavy_check_mark: |
| <kbd>g</kbd> → <kbd>y</kbd>                     | Normal                           | Go to _type's definition_                              | :heavy_check_mark: |
| <kbd>g</kbd> → <kbd>i</kbd>                     | Normal                           | Go to _implementation_                                 | :heavy_check_mark: |
| <kbd>g</kbd> → <kbd>r</kbd>                     | Normal                           | Go to _references_                                     | :heavy_check_mark: |
| <kbd>g</kbd> → <kbd>h</kbd>                     | Normal                           | Open documentation                                     | :white_check_mark: |
| <kbd>leader</kbd> → <kbd>r</kbd> → <kbd>n</kbd> | Normal                           | Rename symbol                                          | :white_check_mark: |
| <kbd>leader</kbd> → <kbd>c</kbd> → <kbd>r</kbd> | Normal                           | Restart **_CoC_**'s server                             | :white_check_mark: |
| <kbd>leader</kbd> → <kbd>c</kbd> → <kbd>f</kbd> | Normal + Visual + Select         | Format selected region                                 | :heavy_check_mark: |
| <kbd>g</kbd> → <kbd>a</kbd>                     | Normal + Visual + Select         | Run selected codes's action for current file           | :heavy_check_mark: |
| <kbd>leader</kbd> → <kbd>f</kbd> → <kbd>c</kbd> | Normal                           | Show list of **_Coc_**'s commands                      | :white_check_mark: |

#### [coc-explorer](https://github.com/weirongxu/coc-explorer)

| Key binding                     | Mode (Condition)            | Command                                          |    Recursived?     |
| ------------------------------- | --------------------------- | ------------------------------------------------ | :----------------: |
| <kbd>Ctrl</kbd> + <kbd>b</kbd>  | Normal                      | Open **_CoC Explorer_**                          | :white_check_mark: |
| <kbd>?</kbd>                    | (_CoC Explorer_ is showing) | Open _help_                                      | :white_check_mark: |
| <kbd>\*</kbd>                   | (_CoC Explorer_ is showing) | Toggle Selection                                 | :white_check_mark: |
| <kbd>.</kbd>                    | (_CoC Explorer_ is showing) | Toggle hidden                                    | :white_check_mark: |
| <kbd>Shift</kbd> + <kbd>r</kbd> | (_CoC Explorer_ is showing) | Refresh                                          | :white_check_mark: |
| <kbd>q</kbd>                    | (_CoC Explorer_ is showing) | Quit                                             | :white_check_mark: |
| <kbd>Esc</kbd>                  | (_CoC Explorer_ is showing) | Esc                                              | :white_check_mark: |
| <kbd>t</kbd>                    | (_CoC Explorer_ is showing) | Open selected file(s) in new tab(s)              | :white_check_mark: |
| <kbd>h</kbd>                    | (_CoC Explorer_ is showing) | Collapse folder                                  | :white_check_mark: |
| <kbd>l</kbd>                    | (_CoC Explorer_ is showing) | Expand folder if possible, else open             | :white_check_mark: |
| <kbd>r</kbd> → <kbd>h</kbd>     | (_CoC Explorer_ is showing) | Collapse recursively                             | :white_check_mark: |
| <kbd>r</kbd> → <kbd>l</kbd>     | (_CoC Explorer_ is showing) | Expand recursively                               | :white_check_mark: |
| <kbd>Backspace</kbd>            | (_CoC Explorer_ is showing) | Go to parent directory                           | :white_check_mark: |
| <kbd>Enter</kbd>                | (_CoC Explorer_ is showing) | <kbd>cd</kbd> to folder is expandable, else open | :white_check_mark: |
| <kbd>y</kbd>                    | (_CoC Explorer_ is showing) | Copy file's path                                 | :white_check_mark: |
| <kbd>Shift</kbd> + <kbd>y</kbd> | (_CoC Explorer_ is showing) | Copy file's name                                 | :white_check_mark: |
| <kbd>c</kbd>                    | (_CoC Explorer_ is showing) | Copy selected file(s)                            | :white_check_mark: |
| <kbd>x</kbd>                    | (_CoC Explorer_ is showing) | Cut selected file(s)                             | :white_check_mark: |
| <kbd>p</kbd>                    | (_CoC Explorer_ is showing) | Paste selected file(s)                           | :white_check_mark: |
| <kbd>d</kbd>                    | (_CoC Explorer_ is showing) | Delete selected file(s) (to trash)               | :white_check_mark: |
| <kbd>Shift</kbd> + <kbd>d</kbd> | (_CoC Explorer_ is showing) | Delete selected file(s) (forever)                | :white_check_mark: |
| <kbd>a</kbd>                    | (_CoC Explorer_ is showing) | Add (create) new file                            | :white_check_mark: |
| <kbd>Shift</kbd> + <kbd>a</kbd> | (_CoC Explorer_ is showing) | Add (create) new folder                          | :white_check_mark: |
| <kbd>r</kbd>                    | (_CoC Explorer_ is showing) | Rename selected file(s)/folder(s)                | :white_check_mark: |
| <kbd>f</kbd>                    | (_CoC Explorer_ is showing) | Search for file(s)                               | :white_check_mark: |
| <kbd>Shift</kbd> + <kbd>f</kbd> | (_CoC Explorer_ is showing) | Search for file(s) recursively                   | :white_check_mark: |
| <kbd>X</kbd>                    | (_CoC Explorer_ is showing) | Execute System's command                         | :white_check_mark: |
