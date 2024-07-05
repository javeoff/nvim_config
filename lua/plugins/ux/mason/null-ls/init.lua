return {
	'jay-babu/mason-null-ls.nvim',
	dependencies = {
    "williamboman/mason.nvim",
	},
	config = function()
		require('plugins/ux/mason/null-ls/config')
	end
}
