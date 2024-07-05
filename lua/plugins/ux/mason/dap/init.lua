return {
	'jay-babu/mason-nvim-dap.nvim',
	dependencies = {
    "williamboman/mason.nvim",
	},
	config = function()
		require('plugins/ux/mason/dap/config')
	end
}
