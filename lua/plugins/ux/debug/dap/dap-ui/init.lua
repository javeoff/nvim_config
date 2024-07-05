
return {
	"rcarriga/nvim-dap-ui", 
	dependencies = {
		'mfussenegger/nvim-dap',
	},
	config = function()
		require('plugins/ux/debug/dap/dap-ui/config')
		require('plugins/ux/debug/dap/dap-ui/keybindings')
	end
}
