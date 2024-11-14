return {
	'dgagn/diagflow.nvim',
	config = function()
		require('plugins/inline_diagnostic/config')
		require('plugins/inline_diagnostic/keybindings')
	end,
	enabled = false
}
