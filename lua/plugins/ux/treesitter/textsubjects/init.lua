return {
    'RRethy/nvim-treesitter-textsubjects',
    dependencies = {
			'nvim-treesitter',
		},
		config = function()
			-- require('plugins/ux/treesitter/textsubjects/config')
			require('plugins/ux/treesitter/textsubjects/keybindings')
		end
}
