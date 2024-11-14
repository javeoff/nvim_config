local folders = {
	'themes',
	'plugins',
	'keybindings',
}

local disabled_plugins = {
	'sonokai',
	'vimbrains',
	-- 'matrix',
}


require('utils/loader').load(folders, disabled_plugins)

require('indexer')

require('utils/bind_options')(require('options'))

vim.defer_fn(function()
	vim.cmd("highlight Normal guibg=NONE ctermbg=NONE")
	vim.cmd("highlight NonText guibg=NONE ctermbg=NONE")
end, 100)

-- Add chat mode commands for aider
local aider_chat_commands = {
    {
        name = "Gemini",
        command = ":AiderSilentSendPromptByCommandline /model openrouter/google/gemini-pro"
    },
    {
        name = "DeepSeek",
        command = ":AiderSilentSendPromptByCommandline /model openrouter/deepseek/deepseek-chat"
    },
    {
        name = "Llama",
        command = ":AiderSilentSendPromptByCommandline /model openrouter/anthropic/claude-1.2"
    },
    {
        name = "Claude Instant",
        command = ":AiderSilentSendPromptByCommandline /model openrouter/anthropic/claude-1.2"
    },
    {
        name = "Claude 3 Haiku",
        command = ":AiderSilentSendPromptByCommandline /model openrouter/anthropic/claude-3-haiku"
    },
    {
        name = "Claude 3.5 Sonnet",
        command = ":AiderSilentSendPromptByCommandline /model anthropic/claude-3.5-sonnet"
    },
    {
        name = "GPT-4o",
        command = ":AiderSilentSendPromptByCommandline /model openrouter/openai/chatgpt-4o-latest"
    },
    {
        name = "GPT-4o-mini",
        command = ":AiderSilentSendPromptByCommandline /model openrouter/openai/gpt-4o-mini-2024-07-18"
    },
    {
        name = "GPT-o1-mini",
        command = ":AiderSilentSendPromptByCommandline /model openrouter/openai/o1-mini"
    },
    {
        name = "GPT-o1",
        command = ":AiderSilentSendPromptByCommandline /model openrouter/openai/o1-preview"
    }
}
