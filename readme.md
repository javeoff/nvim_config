## Terminal Tools

- https://github.com/dandavison/delta

## LSP Tools

- https://github.com/ray-x/navigator.lua
- https://github.com/kevinhwang91/nvim-bqf
- https://github.com/folke/lua-dev.nvim

## Debug Tools

- https://github.com/mfussenegger/nvim-dap
- https://github.com/puremourning/vimspector
- https://github.com/David-Kunz/jester
- https://github.com/rcarriga/vim-ultest

## Git Tools

- https://github.com/sindrets/diffview.nvim
- https://github.com/tpope/vim-fugitive
- https://github.com/lewis6991/gitsigns.nvim
- https://github.com/TimUntersberger/neogit
- https://github.com/tanvirtin/vgit.nvim

## FZF Tools

- https://github.com/ibhagwan/fzf-lua
- https://github.com/vijaymarupudi/nvim-fzf

## UI Tools

- https://github.com/lambdalisue/glyph-palette.vim
- https://github.com/lambdalisue/nerdfont.vim

## Session Tools

- https://github.com/folke/persistence.nvim
- https://github.com/rmagatti/auto-session

## Other Tools

- [x] https://github.com/phaazon/hop.nvim
- [x] https://github.com/mg979/vim-visual-multi
- [x] https://github.com/matze/vim-move
- https://github.com/RRethy/vim-hexokinase
- https://github.com/tpope/vim-surround (https://github.com/ray-x/nvim/blob/18d6f00e1193f9db5aac7a814778700d3e6186cf/lua/modules/editor/plugins.lua#L31)
- https://github.com/ggandor/lightspeed.nvim
- https://github.com/chipsenkbeil/distant.nvim
- https://github.com/xarthurx/taskwarrior.vim
- https://github.com/heavenshell/vim-jsdoc
- https://github.com/dhruvasagar/vim-table-mode
- https://github.com/AndrewRadev/splitjoin.vim
- [x] https://github.com/kazhala/close-buffers.nvim
- [del] https://github.com/Shougo/defx.nvim
- https://github.com/wting/autojump/wiki

- https://github.com/Furkanzmc/zettelkasten.nvim
- https://github.com/mickael-menu/zk-nvim

# Vifm

- `:n` - List of bindings

### Visual

- `za` - Toggle dotfiles visible

# NeoVim

## Commands

- `shift + e` `:Commands` - Open commands menu
- `:Maps` - Show mappings menu
- `:Helptags` - Show helptags menu
- `:%s/[search]/[replace]` - Replace to

## Information
- `ctrl + g` - Information about file

## Editing

- `opt + o` - Add new line below
- `opt + O` - Add new line under
- `opt + i` - Remove empty line below
- `opt + I` - Remove empty line under
- `o` - Add new line below and insert to
- `O` - Add new line under and insert to
- `u` - Undo changes
- `U` - Redo changes
- `ctrl + h` - File changes tree
- `\ + u` - Undo history tree
- `ctrl + a` - Select all text
- `gcc` - Comment current line
- `/` - Search text
  - `n` - Next search result
  - `N` - Previous search result
- `*` - Search selected text
- \`\` - Move to the latest buffer line
- `z=` - Spelling word under cursor

## Navigating

### Project Navigating

- `tt` - Open Project Tags Menu
- `shift + x` - Open grep menu
- `ctrl + j` - Navigate to next recent file
- `ctrl + k` - Navigate to prev recent file
- `shift + h` - Open recent files History
- `ctrl + e` - Open navigate menu
- \`` + 0`\ - In Last file edited
- \`` + '\` - Back to line in current buffer where jumped from
- \`` + "\` - Last exited current buffer
- \`` + ^\` - Last position in insert mode
- \`` + .\` - Last change in current buffer

### File Navigating

- `{` `}` - Move on paragraphs
- `gg` - Move on the top of file
- `GG` - Move to the end of file
- `(` `)` - Jump backward/forward a sentence
- `{` `}` - Jump backward/forward a paragraph
- `/` - Search forward in current buffer
- `?` - Search backward in current buffer
- `shift + t` - Open File Tags menu
- `shift + f` - Open Find in file menu
- \`` + [\` - Previous yanked mode text
- \`` + ]`\ - Next yanked text
- `ctrl + m` - File Navigator menu
- `opt + m` - File Tags Tree menu

### Line Navigating

- `M` - Move to center of line
- `0` - Move to the start of line
- `$` - Move to the end of line
- `b` - Move to the prev world start
- `B` - `b` with skip punctuation
- `e` - Move to the next word end
- `E` - `e` with skip punctuation
- `w` - Move to the next word start
- `W` - `w` with skip punctuation

### Link Navigation
- `gx` - Open link by default app
- `gf` - Open file from link on cursor
- `ctrl + w + f` - Open file from link on cursor in a new window
- `ctrl + w +  F` - Open file from link on cursor in a new tab

### Window Navigating

- `zf` - Top this line
- `ze` - Right this line
- `zs` - Left this line
- `zH` - Half screen to the left
- `zF` - Half screen to the right
- `zz` - Move window to cursor center
- `H` - Move to the top of window

## NvimTree

- `ctrl + f` - Find file in NvimTree sidebar
- `ctrl + n` - Toggle NvimTree sidebar
  - `a` - Append current target
  - `backspace` - Close current folder
  - `o` - Open current target
  - `tab` - Preview current file
  - `H` - toggle visibility of dotfiles
  - `R` - Reload tree
  - `ctrl + ]` - Set the main current folder
- `ctrl + t` - Open in new tab
- `ctrl + x` - Open in horizontal window
- `ctrl + v` - Open in vertical window
- `ctrl + =` - Up directory level
- `_` - Set cursor to current level
- `d` - Delete current target
- `D` - Delete current target to Trash
- `[c` `]c` - Move on git files
- `x` - Cut current target
- `p` - Paste current target
- `Y` - Copy relative path
- `gy` - Copy absolute path
- `y` - Copy file name
- `c` - Copy current target
- `ctrl + r` - Rename current target

## Settings

- `:so %` - reload Nvim config
- `*` - find word on cursor

## Visual Mode

- `v` - Activate visual mode
- `ctrl + v` - Activate visual block mode
- `v$` - Select to end of line
- `v0` - Select to start of line
- `v^` - Select to start of line with tabulation
- `vG` - Select to the end of file
- `ve` - Select to the next of word
- `vip` - Select current paragraph
- `viw` - Select current word
- `vis` - Select current sentencs
- `vit` - Select current tag
- `vib` - Select current block

## Macros

## Clipboard

- `" + 0` - Change Previous text in clipboard to first position
- `ctrl + c` - Duplicate line
- `dx` - Cut line
- `x` - cut selected text
- `dw` - Delete word
- `d$` - Delete from cursor to end of line
- `dd` - Delete line
- `2dd` - Delete 2 lines
- `p` - Paste
- `P` - Paste below cursor
- `yw` - Copy word
- `y$` - Copy from cursor to end of line
- `yy` - Copy line
- `Y` - Copy to system clipboard <Visual Mode>
- `YY` - Copy line to system clipboard

## Windows

`shift + w` - Show Windows menu

### Windows Editing

- `ctrl + w + T` - Move window to new tab
- `ctrl + w + x` - Change windows position between
- `ctrl + w + v` - Create vertical window
- `ctrl + w + s` - Create horizontal window

### Windows Moving

`ctrl + w + <S-arrow>` - Move window <left-right-top-bottom> <h-l-k-j>

### Windows Resize

- `ctrl + w + >` - Increase window width
- `ctrl + w + <` - Decrease window width
- `ctrl + w + +` - Increase window height
- `ctrl + w + -` - Decrease window height
- `ctrl + w + {n} + _` - Change window height to {n}
- `ctrl + w + _` - Maximize window height
- `ctrl + w + =` - Equal window height between themself
- `ctrl + w + {n} + |` - Change window width to {n}
- `ctrl + w + |` - Maximize window width
- `:on` - Close all windows but current

### Windows Cursor

- `ctrl + w + w` - Move cursor to the next window
- `ctrl + w + l` - Move cursor to the window right
- `ctrl + w + h` - Move cursor to the window left
- `ctrl + w + k` - Move cursor to the window up
- `ctrl + w + j` - Move cursor to the window down

### Windows Scroll

- `ctrl + [` - Scroll window up
- `ctrl + ]` - Scroll window down

### Windows Exiting and Saving

- `opt + a` - Save all files
- `opt + w` - Save file
- `opt + W` - Save file permanently
- `opt + q` - Close window
- `opt + Q` - Close window permanently
- `opt + wq` - Save and close
- `ctrl + s` - Source file

## Buffers

- `shift + b` - Open FZF buffers menu
- `shift + s` - Open buffer menu
- `shift + j` - Open next buffer
- `shift + k` - Open previous buffer
- `shift + d` - Delete current buffer
- `:ls` - Open active buffers list
- `:b <n>` - Change to <n> buffer

## Tabs

- `gl` - Open last tab
- `gf` - Open first tab
- `gs` - Open list of tabs
- `gt` `tab` - Open next tab
- `gT` `shift + tab` - Open previous tab
- `ga` - Close all tabs but current
- `gc` - Close current tab
- `gn` - Create new tab

## Files

- `:e .` - Open current directory

## LSP

- `m + tab` - Show Hover Definition
- `mm` - Show Signature Help
- `mr` - Show References
- `md` - Show Definitions
- `mD` - Show Declarations
- `mt` - Show Type Definitions
- `mi` - Show Implementations
- `msd` - Show File symbols
- `mss` - Show Project symbols
- `mw` - Show Diagnostics list
- `mef` - Show FZF Diagnostic List
- `mer` - Edit Rename Action
- `mea` - Edit Code Actions

## Treesitter

- `\ + r + h` - highlit captures under cursor
- `\ + r + r` - (dep) open file structure tree
  - `R` - Refresh TSPlayground tree
  - `o` - Toggle query editor
  - `a` - Toggle visibility of anonymous nodes
  - `i` - Toggle visibility of highlight groups
  - `I` - Toggle visibility of the language the node belongs to
  - `t` - Toggle visibility of injected languages.
  - `f` - Focus in language tree under cursor
  - `F` - Unfocus language tree
  - `<cr>` - Go to current node in code buffer

## Foldings

- `z + a` - Toggle fold under cursor
- `z + R` - Open all folds
- `z + M` - Close all folds

## Wakatime

- `:WakaTimeApiKey` - Enter wakatime api key
- `:WakaTimeToday` - Show today statistics

## Telescope

- `f` - Find files
- `\ + f + f` - Grep in files
- `\ + f + h` - Find help utilites
- `\ + f + b` - Find active buffers
- `\ + f + o` - Find recent files
- `ctrl + d` - Preview scroll down
- `ctrl + u` - Preview scroll up
- `ctrl + t` - Open file in new tab
- `ctrl + x` - Open file in horizontal split
- `ctrl + v` - Open file in vertical split

## Toggleterm

- `ctrl + \` `\ + t + t` - Toggle bottom terminal
- `\ + t + f` - Open float terminal
- `\ + t + v` - Open vertical terminal
- `\ + t + h` - Open horizontal terminal
- `\ + t + g` - Open float git
- `\ + t + n` - Open float npm

## Git VCS

- `shift + c` - Open Commits menu

## Colorscheme

- :hi - Открыть установленную colorscheme
