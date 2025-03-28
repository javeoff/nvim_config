return {
	'sherifkandeel/vim-colors',
	priority = 0,
	config = function()
		local default_colors = require('themes/vimbrains/colors');
		vim.g.colors = default_colors;
		vim.defer_fn(function()
			vim.cmd("highlight Normal guibg=NONE ctermbg=NONE")
			vim.cmd("highlight NonText guibg=NONE ctermbg=NONE")
		end, 0)
		require('themes/vimbrains/options')
		vim.cmd('colorscheme vimbrains');
		vim.cmd('hi Normal ctermbg=16 guibg=#000000')
	end,
}
