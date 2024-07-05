vim.api.nvim_create_user_command(
	'ToggleIndentLine',
	function()
		vim.cmd('IndentBlanklineToggle')
	end,
	{ }
)
