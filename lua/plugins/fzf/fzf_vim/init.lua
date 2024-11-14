return {
	'junegunn/fzf.vim',
	dependencies = {
		'junegunn/fzf'
	},
	config = function()
		require('plugins/fzf/fzf_vim/config')
		require('plugins/fzf/fzf_vim/keybindings')
		local models = {
			{
				name = "Code",
				command = ":AiderSilentSendPromptByCommandline '/chat-mode code'"
			},
			{
				name = "Ask",
				command = ":AiderSilentSendPromptByCommandline '/chat-mode ask'"
			},
			{
				name = "Architect",
				command = ":AiderSilentSendPromptByCommandline '/chat-mode architect'"
			},
		}

		local commands = {
			{
				name = "Gemini",
				command = ":AiderSilentSendPromptByCommandline '/model openrouter/google/gemini-pro'"
			},
			{
				name = "DeepSeek",
				command = ":AiderSilentSendPromptByCommandline '/model openrouter/deepseek/deepseek-chat'"
			},
			{
				name = "Llama",
				command = ":AiderSilentSendPromptByCommandline '/model openrouter/anthropic/claude-1.2'"
			},
			{
				name = "Claude Instant",
				command = ":AiderSilentSendPromptByCommandline '/model openrouter/anthropic/claude-1.2'"
			},
			{
				name = "Claude 3 Haiku",
				command = ":AiderSilentSendPromptByCommandline '/model openrouter/anthropic/claude-3-haiku'"
			},
			{
				name = "Claude 3.5 Sonnet",
				command = ":AiderSilentSendPromptByCommandline '/model anthropic/claude-3.5-sonnet'"
			},
			{
				name = "GPT-4o",
				command = ":AiderSilentSendPromptByCommandline '/model openrouter/openai/chatgpt-4o-latest'"
			},
			{
				name = "GPT-4o-mini",
				command = ":AiderSilentSendPromptByCommandline '/model openrouter/openai/gpt-4o-mini'"
			},
			{
				name = "GPT-o1-mini",
				command = ":AiderSilentSendPromptByCommandline '/model openrouter/openai/o1-mini'"
			},
			{
				name = "GPT-o1",
				command = ":AiderSilentSendPromptByCommandline '/model openrouter/openai/o1-preview'"
			}
		}

		vim.keymap.set('n', '§.', function()
			vim.ui.select(commands, {
				prompt = "Choose model:",
				format_item = function(item)
					return item.name
				end
			}, function(choice)
				if choice then
					vim.cmd(choice.command)
				end
			end)
		end, { desc = "Select model" })
	end
}
