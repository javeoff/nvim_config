return {
	'williamboman/mason-lspconfig.nvim',
	dependencies = {
    "williamboman/mason.nvim",
	},
	enabled = false,
	config = function()
		require('plugins/mason/lsp/config')
	end
}
