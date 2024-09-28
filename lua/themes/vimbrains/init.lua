return {
	'sherifkandeel/vim-colors',
	priority = 1,
	config = function()
		require('themes/vimbrains/options')
		local default_colors = require('themes/vimbrains/colors');
		vim.g.colors = default_colors;
	end,
}
