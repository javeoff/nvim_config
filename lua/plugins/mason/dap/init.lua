return {
	'jay-babu/mason-nvim-dap.nvim',
	dependencies = {
    "williamboman/mason.nvim",
	},
	config = function()
		require('plugins/mason/dap/config')
	end,
	enabled = false
}
