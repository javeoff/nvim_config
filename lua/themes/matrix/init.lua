return {
	'iruzo/matrix-nvim',
	config = function()
		vim.cmd('colorscheme matrix');
		vim.api.nvim_set_hl(
			0,
			'Normal',
			{
				bg = '#000000',
				ctermbg = 16,
			}
		)
		vim.defer_fn(function()
			vim.cmd("highlight Normal guibg=NONE ctermbg=NONE")
			vim.cmd("highlight NonText guibg=NONE ctermbg=NONE")
		end, 0)
	end
}
