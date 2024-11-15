return {
	'Robitx/gp.nvim',
	enabled = true,
	config = function()
		require('plugins/gpt/keybindings')
		require('gp').setup({
			chat_assistant_prefix = { "AI:", "[{{agent}}]" },
			default_command_agent = 'Claude',
			default_chat = 'Claude',
			agents = require('plugins/gpt/agents'),
			hooks = require('plugins/gpt/hooks'),
		})
	end,
}
