return {
    'RRethy/nvim-treesitter-textsubjects',
    dependencies = {
			'nvim-treesitter',
		},
		config = function()
			require('plugins/textsubjects/keybindings')
		end
}
