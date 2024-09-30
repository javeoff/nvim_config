return {
	'jay-babu/mason-null-ls.nvim',
	dependencies = {
    "williamboman/mason.nvim",
	},
	config = function()
		require('plugins/mason/null-ls/config')
	end
}
