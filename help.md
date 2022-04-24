## Visual Mode

- `ctrl + v` - Activate visual block mode
- `v$` - Select to end of line
- `v0` - Select to start of line
- `v^` - Select to start of line with tabulation
- `vat` - Select outer block
- `vatat` - Select more outer block
- `vaa` - Select all text
- `vit` - Select inner block
- `vitit` - Select more inner block
- `vis` - Select sentence
- `viw` - Select word
- `viW` - Select word with a tag
- `]m` `]M` - Go to next [start/end] function outer
- `]]` `][` - Go to next [start/end] class outer
- `]p` `]P` - Go to next [start/end] parameter outer
- `]f` `]B` - Go to next [start/end] call outer
- `]b` `]F` - Go to next [start/end] block outer
- `[m` `[M` - Go to previous [start/end] function outer
- `[]` `[[` - Go to previous [start/end] class outer
- `[p` `[P` - Go to previous [start/end] parameter outer
- `[f` `[B` - Go to previous [start/end] call outer
- `[b` `[F` - Go to previous [start/end] block outer

## Macros

- `q[key]` - Record macros by [key]

## GIT [ctrl-g]

- `ctrl-g-n` - Git commit menu
- `ctrl-g-g` - Git changes
- `ctrl-g-l` - Git log
- `ctrl-g-f` - Git file history
- `ctrl-g-ss` - Git status
- `ctrl-g-b` - Git branches
- `ctrl-g-c` - Git branch commits
- `ctrl-g-C` - Git commits
- `ctrl-g-]` - Next hunk
- `ctrl-g-[` - Previous hunk
- `ctrl-g-sb` - Stage buffer
- `ctrl-g-sh` - Stage hunk
- `ctrl-g-su` - Undo stage hunk
- `ctrl-g-sl` - Stage line hunk
- `ctrl-g-rb` - Reset buffer signs
- `ctrl-g-rh` - Reset buffer signs
- `ctrl-g-ri` - Reset buffer index
- `ctrl-g-rl` - Reset line hunk
- `ctrl-g-p` - Preview current hunk
- `ctrl-g-Tab` - Blame current hunk
- `ctrl-g-d` - Different popup
- `ctrl-g-b` - Toggle blame line mode
- `ctrl-g-B` - Toggle file blame sidebar
- `ctrl-g-D` - Toggle git difference menu
- `ctrl-g-S` - Toggle git show menu
- `ctrl-g-M` - Toggle git merge tool menu
- `ctrl-g-T` - Toggle git project tool menu
- `ctrl-g-tb` - Toggle git project blame tool menu
- `ctrl-g-ts` - Toggle git project status tool menu
- `MM` - Toggle git manager popup
- `ML` - Toggle git log popup
- `ME` - Toggle git commits by ME
- `MR` - Toggle git local actions popup
- `MS` - Toggle git stash popup

- `:DiffviewOpen d4a7b0d` - Information about commit
- `:GFiles` - Open Git files
- `:Git` - Open git menu

## Navigation

- Project Navigation
	- `ctrl-f` - Toggle files menu
	- `/ctrl-f` - <ctrl-d><ctrl-u> Toggle command history menu
	- `ctrl-f-g` - Toggle live grep menu
	- `ctrl-f-G` - Toggle grep menu
	- `ctrl-f-m` - Toggle marks menu
	- `ctrl-f-h` - Toggle recent files menu
	- `ctrl-f-r` `"` - Toggle registers menu
- File Navigation
	- ``` - File navigation keybindings
	- `ctrl-l-]` - Jump to next highlight reference
	- `ctrl-l-[` - Jump to previous highlight reference
	- `ctrl-l-e` - Toggle file diagnostics menu
	- `ctrl-l-S` - Toggle file symbols menu
	- `{` `}` - Move on paragraphs
	- `gg` - Move on the top of file
	- `GG` - Move to the end of file
	- `(` `)` - Jump backward/forward a sentence
	- `{` `}` - Jump backward/forward a paragraph
	- `/` - Search forward in current buffer
	- `?` - Search backward in current buffer
- Line Navigation
	- `M` - Move to center of line
	- `0` - Move to the start of line
	- `$` - Move to the end of line
	- `b` - Move to the prev world start
	- `B` - `b` with skip punctuation
	- `e` - Move to the next word end
	- `E` - `e` with skip punctuation
	- `w` - Move to the next word start
	- `W` - `w` with skip punctuation
- Link Navigation
	- `gx` - Open link by default app
	- `gf` - Open file from link on cursor
	- `ctrl + w + f` - Open file from link on cursor in a new window
	- `ctrl + w +  F` - Open file from link on cursor in a new tab
- Window Navigation
	- `zf` - Top this line
	- `ze` - Right this line
	- `zs` - Left this line
	- `zH` - Half screen to the left
	- `zF` - Half screen to the right
	- `zz` - Move window to cursor center
	- `H` - Move to the top of window
	
## Panes

## Buffers

- `shift + b` - Open FZF buffers menu
- `shift + s` - Open buffer menu
- `shift + j` - Open next buffer
- `shift + k` - Open previous buffer
- `shift + d` - Delete current buffer
- `:ls` - Open active buffers list
- `:b <n>` - Change to <n> buffer
- `ctrl-f-'` - Toggle buffers menu

## Tabs

- `ctrl-f-t` - Toggle tabs menu
- `gl` - Open last tab
- `gf` - Open first tab
- `gs` - Open list of tabs
- `gt` `tab` - Open next tab
- `gT` `shift + tab` - Open previous tab
- `ga` - Close all tabs but current
- `gc` - Close current tab
- `gn` - Create new tab

## Clipboard

- `ctrl-f-k` - Toggle keymaps menu
- `ctrl-f-c` - Toggle commands menu
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

## LSP (Language Server Protocol)

- References
	- `gd` - Go to definition
	- `gD` - Go to declaration
	- `gt` - Go to type definition
	- `gi` - Go to implementation
	- `ctrl-l-h` - Toggle definition preview popup
	- `ctrl-l-s` - Toggle signature help
	- `ctrl-l-D` - Find declarations
	- `ctrl-l-d` - Find definitions
	- `ctrl-l-dd` - Find type definitions
	- `ctrl-l-ii` - Find implementations
	- `ctrl-l-u` - Find references
	- `ctrl-l-co` - Show outgoing calls
	- `ctrl-l-ci` - Show incoming calls
- Diagnostic
	- `ctrl-l-w` - Toggle live project diagnostics menu
	- `ctrl-l-ee` - Toggle project diagnostics menu
    - `ctrl-l-l` - Toggle codelens popup
    - `ctrl-l-Tab` - Toggle diagnostic popup
	- `ctrl-l-(` - Go to prev diagnostic line
	- `ctrl-l-)` - Go to next diagnostic line
- Refactoring
	- `ctrl-l-o` - Organize imports
	- `ctrl-l-r` - Rename reference under cursor
	- `ctrl-l-R` - Rename file
	- `ctrl-l-I` - Import all in file
	- `ctrl-l-A` - Toggle code actions menu
	- `ctrl-l-a` - Find code actions
- Formatting
	- `ctrl-l-f` - Toggle formatting popup
	- `ctrl-l-1` - ESLint Formatting
	- `ctrl-l-2` - TSServer Formatting
	- `ctrl-l-3` - Diagnostic-LS Formatting
	- `ctrl-l-4` - Null-LS Formatting
- Workspace
	- `ctrl-l-ww` - List of workspaces
	- `ctrl-l-wa` - Add new workspace
	- `ctrl-l-wr` - Remove workspace
- Commands
	- `:LspInfo` - Information about active lsp servers
	- `:LspStop` - Stop lsp server
	- `:LspStart` - Start lsp server
	- `:LspRestart` - Restart lsp server
	
## Treesitter (AST Parser)

- `:TSPlaygroundToggle` - Toggle syntax tree
- `:TSHighlightCapturesUnderCursor` - Toggle ast tag under cursor

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
