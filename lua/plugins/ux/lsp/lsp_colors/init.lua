return {
    'folke/lsp-colors.nvim',
		lazy = true,
		config = function()
			require('plugins/ux/lsp/lsp_colors/config')
		end
}
