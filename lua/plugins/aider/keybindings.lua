local wk = require("which-key")

vim.api.nvim_create_autocmd('User',
	{
		pattern = 'AiderOpen',
		callback =
				function(args)
					vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', { buffer = args.buf })
					vim.keymap.set('n', '<Esc>', '<cmd>AiderHide<CR>', { buffer = args.buf })
				end
	})

local aider_mappings = {
	{ "§<CR>", ":AiderRun<CR>i", desc = "Run Aider" },
	{ "§v", ":AiderSilentAddCurrentFile<CR>:AiderVoice<CR>", desc = "Add current file (silent)" },
	{ "§i", ":AiderAddCurrentFile<CR>i", desc = "Add current file (silent)" },
	{ "§o", ":AiderAddCurrentFile<CR>i", desc = "Add current file" },
	{ "§c", ":AiderToggleCodeMode<CR>i", desc = "Toggle code mode" },
	-- { "i", ":AiderPaste<CR>", desc = "Paste" },
	{ "§h", ":AiderHide<CR>", desc = "Hide Aider" },
	{ "§av", ":AiderVisualTextWithPrompt<CR>", desc = "Add visual selection" },
}

wk.add(aider_mappings)
