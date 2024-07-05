return {
	'mfussenegger/nvim-dap',
	config = function()
		require('plugins/ux/debug/dap/nvim-dap/config')
		require('plugins/ux/debug/dap/nvim-dap/keybindings')
	end
}
