return {
	'Robitx/gp.nvim',
	enabled = true,
	config = function()
		require('plugins/gpt/keybindings')
		require('gp').setup({
			openai_api_key = os.getenv("OPENAI_API_KEY"),
			chat_assistant_prefix = { "AI:", "[{{agent}}]" },
			chat_topic_gen_model = "gpt-4",
			agents = require('plugins/gpt/agents'),
			hooks = require('plugins/gpt/hooks'),
		})
	end,
}
