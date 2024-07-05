return {
	'phaazon/hop.nvim',
	config = function()
		require('plugins/ux/treesitter/hop/config')
		require('plugins/ux/treesitter/hop/keybindings')
	end
}
