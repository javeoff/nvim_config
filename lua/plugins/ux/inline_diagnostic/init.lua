return {
	'dgagn/diagflow.nvim',
	config = function()
		require('plugins/ux/inline_diagnostic/config')
		require('plugins/ux/inline_diagnostic/keybindings')
	end,
	enabled = false
}
