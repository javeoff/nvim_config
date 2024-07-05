return {
	'williamboman/mason-lspconfig.nvim',
	dependencies = {
    "williamboman/mason.nvim",
	},
	config = function()
		require('plugins/ux/mason/lsp/config')
	end
}
