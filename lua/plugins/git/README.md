
# Git Commands

## NeoGit
- `:Git blame` - Open blame for all file lines
- `:Git log` - Open git log of files
	- `O` - Show information about commit
	- `o` - Open changes in the top pane
	- `ctrl + m` - Go to file in commit
	- `coo` - Checkout commit
- `:Git merge`
	- `Gvdiffsplit` - Vertical merge split
	- `]c` `[c` - Jump to conflicts
	- `d2o` - Take from left window
	- `d3o` - Take from right window
	- `u` - Undo merge change

## Git signs
- `:Gitsigns next_hunk` - Navigate to next hunk
- `:Gitsigns prev_hunk` - Navigate to next hunk
- `:Gitsigns preview_hunk` - Show change info popup
- `:Gitsigns toggle_current_line_blame` - Toggle current line blame on the right side
- `:Gitsigns toggle_signs` - Toggle sign hunk highlight
- `:Gitsigns toggle_numhl` - Toggle number hunk highlight
- `:Gitsigns toggle_linehl` - Toggle line hunk highlight
- `:Gisigns diffthis` - Toffle diff mode

## Diffview
- `:DiffviewOpen`
- `:DiffviewOpen -uno` - Hide untracked files
- `:DiffviewOpen -- :!exclude/this :!and/thi` - Exclude certain paths
- `:DiffviewOpen -C/foo/bar/baz` - From specific directory
- `:DiffviewOpen HEAD~2 --cached` - Diff the index against a git rev
- `:DiffviewClose` - Close diff view
- `:DiffviewToggleFiles` - 
- `:DiffviewFocusFiles` - 
- `:DiffviewRefresh` - 

- `:DiffviewOpen HEAD~2`
- `:DiffviewOpen HEAD~4..HEAD~2`
- `:DiffviewOpen d4a7b0d`
- `:DiffviewOpen d4a7b0d..519b30e`
- `:DiffviewOpen origin/main...HEAD`

- `:DiffviewFileHistory` - Open file history in the new tab
- `:DiffviewLog` - Git commands log of plugin
