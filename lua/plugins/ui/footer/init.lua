return {
	'nvim-lualine/lualine.nvim',
	lazy = true,
	dependencies = {
		'nvim-tree/nvim-web-devicons',
		"SmiteshP/nvim-navic",
    'nvim-treesitter/nvim-treesitter',
	},
	config = function()
		require('plugins/ui/footer/config')
	end
}
