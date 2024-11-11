require('which-key').add({
	{ 'g<Tab>', ':Gitsigns toggle_current_line_blame<CR>',                                     desc = 'Toggle line blame hints' },
	{ 'gss',    ':Gitsigns stage_hunk<CR>',                                                    desc = 'Stage current hunk' },
	{ 'gsf',    ':Gitsigns stage_buffer<CR>',                                                  desc = 'Stage current buffer' },
	{ 'gsu',    ':Gitsigns undo_stage_hunk<CR>',                                               desc = 'Undo stage hunk' },
	{ 'gsl',    ':Gitsigns select_hunk<CR>',                                                   desc = 'Preview current hunk' },
	{ 'gsL',    ':lua require"gitsigns".stage_hunk({vim.fn.line("."), vim.fn.line("v")})<CR>', desc = 'Stage line hunk' },
})

require('which-key').add({
	{ '<Tab>g', ':Gitsigns blame_line<CR>', desc = 'Blame current line' },
	{ '<Tab>b', ':Git blame<CR>',           desc = 'Blame current file' },
})
