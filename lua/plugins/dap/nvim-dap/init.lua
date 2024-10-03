return {
	'mfussenegger/nvim-dap',
	config = function()
		require('plugins/dap/nvim-dap/config')
		require('plugins/dap/nvim-dap/keybindings')
	end
}
