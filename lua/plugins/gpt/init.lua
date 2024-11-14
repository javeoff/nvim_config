return {
	'Robitx/gp.nvim',
	enabled = true,
	config = function()
		require('plugins/gpt/keybindings')
		require('gp').setup({
			openai_api_key = os.getenv("OPENAI_API_KEY"),
			chat_assistant_prefix = { "AI:", "[{{agent}}]" },
			chat_topic_gen_model = "gpt-4",
			agents = {
				{
					name = "ChatGPT4",
					chat = true,
					command = false,
					model = require('plugins/gpt/models').gpt4,
					system_prompt = require('plugins/gpt/prompts').gpt4_system_prompt,
				},
				{
					name = "ChatGPT3-5",
					chat = true,
					command = false,
					model = require('plugins/gpt/models').gpt3_5,
					system_prompt = require('plugins/gpt/prompts').gpt3_5_system_prompt,
				},
				{
					provider = "openai",
					name = "CodeGPT4o",
					chat = false,
					command = true,
					model = require('plugins/gpt/models').gpt4_code,
					system_prompt = require("gp.defaults").code_system_prompt,
				},
				{
					provider = "openai",
					name = "CodeGPT4o-mini",
					chat = false,
					command = true,
					model = require('plugins/gpt/models').gpt4_code_mini,
					system_prompt = "Please return ONLY code snippets.\nSTART AND END YOUR ANSWER WITH:\n\n```",
				},
				{
					name = "CodeGPT4",
					chat = false,
					command = true,
					model = require('plugins/gpt/models').gpt4_code,
					system_prompt = "You are an AI working as a code editor.\n\n"
							.. "Please AVOID COMMENTARY OUTSIDE OF THE SNIPPET RESPONSE.\n"
							.. "START AND END YOUR ANSWER WITH:\n\n```",
				},
				{
					name = "CodeGPT3-5",
					chat = false,
					command = true,
					model = require('plugins/gpt/models').gpt3_5_code,
					system_prompt = "You are an AI working as a code editor.\n\n"
							.. "Please AVOID COMMENTARY OUTSIDE OF THE SNIPPET RESPONSE.\n"
							.. "START AND END YOUR ANSWER WITH:\n\n```",
				},
			},
			hooks = {
				-- ... rest of hooks ...
			}
		})
	end,
}
