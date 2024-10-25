return {
	'nekowasabi/aider.vim',
	config = function()
		vim.g.aider_command = 'aider --no-auto-commits'
		vim.g.aider_buffer_open_type = 'floating'
		vim.g.aider_floatwin_width = 100
		vim.g.aider_floatwin_height = 20

		vim.api.nvim_create_autocmd('User',
			{
				pattern = 'AiderOpen',
				callback =
						function(args)
							vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', { buffer = args.buf })
							vim.keymap.set('n', '<Esc>', '<cmd>AiderHide<CR>', { buffer = args.buf })
						end
		})
	end,
	-- keys = {
	-- 	{ '<M-a>', ':AiderAddCurrentFile<cr>:AiderRun<cr>', 'noremap' },
	-- },
}
