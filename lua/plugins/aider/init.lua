return {
	"nekowasabi/aider.vim",
	dependencies = "vim-denops/denops.vim",
	enabled = true,
	config = function()
		vim.g.aider_command = 'aider'
		vim.g.aider_buffer_open_type = 'tab'
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
		vim.api.nvim_set_keymap('n', '§<Enter>', ':Aider<CR>', { noremap = true, silent = true })
		vim.api.nvim_set_keymap('n', '§p', ':AiderRun<CR>i', { noremap = true, silent = true })
		vim.api.nvim_set_keymap('n', '§v', ':AiderSilentAddCurrentFile<CR>:AiderVoice<CR>', { noremap = true, silent = false })
		vim.api.nvim_set_keymap('n', '§.', ':AiderSilentAddCurrentFile<CR><CR>:AiderSilentSendPromptByCommandline "/model openrouter/meta-llama/llama-3-8b-instruct:free"<CR>:AiderVoice<CR>', { noremap = true, silent = false })
		vim.api.nvim_set_keymap('n', '§o', ':AiderAddCurrentFile<CR>i', { noremap = true, silent = true })
		vim.api.nvim_set_keymap('n', '§c', ':AiderToggleCodeMode<CR>i', { noremap = true, silent = true })
		-- vim.api.nvim_set_keymap('n', '§ar', ':AiderAddCurrentFileReadOnly<CR>', { noremap = true, silent = true })
		-- vim.api.nvim_set_keymap('n', '§aw', ':AiderAddWeb ', { noremap = true, silent = true })
		-- vim.api.nvim_set_keymap('n', '§ax', ':AiderExit<CR>i', { noremap = true, silent = true })
		-- vim.api.nvim_set_keymap('n', '§ai', ':AiderAddIgnoreCurrentFile<CR>i', { noremap = true, silent = true })
		-- vim.api.nvim_set_keymap('n', '§aI', ':AiderOpenIgnore<CR>', { noremap = true, silent = true })
		vim.api.nvim_set_keymap('n', '§aI', ':AiderPaste<CR>', { noremap = true, silent = true })
		vim.api.nvim_set_keymap('n', '§ah', ':AiderHide<CR>', { noremap = true, silent = true })
		vim.api.nvim_set_keymap('v', '§av', ':AiderVisualTextWithPrompt<CR>', { noremap = true, silent = true })
	end
}
