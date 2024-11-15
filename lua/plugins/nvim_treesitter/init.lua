return {
	'nvim-treesitter/nvim-treesitter',
	build = ':TSUpdate',
	event = "BufWinEnter",
	config = function()
		require('plugins/nvim_treesitter/config')
		require('plugins/nvim_treesitter/keybindings')
	end,
}
