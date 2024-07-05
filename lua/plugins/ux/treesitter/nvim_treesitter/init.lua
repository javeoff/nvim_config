return {
	'nvim-treesitter/nvim-treesitter',
	build = ':TSUpdate',
	event = "BufWinEnter",
	config = function()
		require('plugins/ux/treesitter/nvim_treesitter/config')
	end,
	-- version = '0.8.4'
}
