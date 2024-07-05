vim.api.nvim_create_user_command(
	'ToggleCmdline',
	function()
		if vim.g.cmdheight == '0' then
			vim.g.cmdheight = '1';
			vim.cmd('set cmdheight=1')
		else
			vim.g.cmdheight = '0';
			vim.cmd('set cmdheight=0')
		end
	end,
	{ }
)
