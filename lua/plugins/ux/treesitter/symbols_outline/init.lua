return {
	'simrat39/symbols-outline.nvim',
	config = function()
		require('plugins/ux/treesitter/symbols_outline/config')
		require('plugins/ux/treesitter/symbols_outline/keybindings')
	end,
	enabled = false,
}
