vim.cmd('set colorcolumn=80')
return {
	'Bekaboo/deadcolumn.nvim',
	config = function()
		local opts = {
			scope = 'buffer',
			modes = { 'i', 'ic', 'ix', 'R', 'Rc', 'Rx', 'Rv', 'Rvc', 'Rvx', 'a' },
			blending = {
					threshold = 0.25,
					colorcode = '#000000',
					hlgroup = {
							'Normal',
							'background',
					},
			},
	}

	require('deadcolumn').setup(opts)
	end,
	enable = true
}

