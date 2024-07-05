vim.api.nvim_create_user_command(
	'ToggleCodeium',
	function()
		if vim.g.cmenable == false then
			vim.g.cmenable = true;
			vim.cmd('Codeium Enable')
		else
			vim.g.cmenable = false
			vim.cmd('Codeium Disable')
		end
	end,
	{ }
)
