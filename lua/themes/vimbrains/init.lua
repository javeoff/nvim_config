return {
	'sherifkandeel/vim-colors',
	priority = 1,
	config = function()
		local default_colors = require('themes/vimbrains/colors');
		vim.g.colors = default_colors;
		require('themes/vimbrains/options')
		vim.cmd('colorscheme vimbrains');
		vim.cmd('hi Normal ctermbg=16 guibg=#000000')
	end,
}
