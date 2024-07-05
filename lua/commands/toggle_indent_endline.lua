vim.api.nvim_create_user_command(
	'ToggleIndentEndLine',
	function()
		if vim.g.list == true then
			vim.g.list = false
			vim.opt.list = false
		else
			vim.g.list = true
			vim.opt.list = true
		end
	end,
	{ }
)
