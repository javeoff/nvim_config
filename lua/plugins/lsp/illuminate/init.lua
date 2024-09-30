return {
    'RRethy/vim-illuminate',
		config = function()
			require('plugins/lsp/illuminate/config')
			require('plugins/lsp/illuminate/keybindings')
		end,
		enabled = true,
}
