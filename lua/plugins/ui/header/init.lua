return {
	'zefei/vim-wintabs',
	lazy = false,
	priority = 49,
	config = function()
		require('plugins/ui/header/config')
		require('plugins/ui/header/keybindings')
	end,
	dependencies = { 
		'nvim-lualine/lualine.nvim',
		'nvim-tree/nvim-web-devicons' 
	}
}
