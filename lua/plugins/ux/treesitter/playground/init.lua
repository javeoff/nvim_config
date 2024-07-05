return {
	'nvim-treesitter/playground',
	dependencies = {
		'nvim-treesitter',
	},
	build = ':TSInstall query',
	config = function()
		require('plugins/ux/treesitter/playground/config')
	end
}
