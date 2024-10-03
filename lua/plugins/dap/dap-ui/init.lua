return {
	"rcarriga/nvim-dap-ui",
	dependencies = {
		"mfussenegger/nvim-dap",
		"nvim-neotest/nvim-nio"
	},
	config = function()
		require('plugins/dap/dap-ui/keybindings')
	end
}
