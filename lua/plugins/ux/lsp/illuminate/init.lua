return {
    'RRethy/vim-illuminate',
		config = function()
			require('plugins/ux/lsp/illuminate/config')
			require('plugins/ux/lsp/illuminate/keybindings')
		end,
		enabled = true,
}
