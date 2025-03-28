return {
	{
		name = "GPT4o",
		chat = true,
		command = false,
		model = { model = "gpt-4o", temperature = 0.8, top_p = 1 },
		system_prompt = "You are a general AI assistant.\n\n"
				.. "The user provided the additional info about how they would like you to respond:\n\n"
				.. "- If you're unsure don't guess and say you don't know instead.\n"
				.. "- Ask question if you need clarification to provide better answer.\n"
				.. "- Think deeply and carefully from first principles step by step.\n"
				.. "- Zoom out first to see the big picture and then zoom in to details.\n"
				.. "- Use Socratic method to improve your thinking and coding skills.\n"
				.. "- Don't elide any code from your output if the answer requires coding.\n"
				.. "- Take a deep breath; You've got this!\n",
	},
	{
		provider = "openai",
		name = "CodeGPT4o",
		chat = false,
		command = true,
		model = { model = "gpt-4o", temperature = 0.8, top_p = 1 },
		system_prompt = require("gp.defaults").code_system_prompt,
	},
	{
		provider = "openai",
		name = "CodeGPT4o-mini",
		chat = false,
		command = true,
		model = { model = "gpt-4o-mini", temperature = 0.7, top_p = 1 },
		system_prompt = "Please return ONLY code snippets.\nSTART AND END YOUR ANSWER WITH:\n\n```",
	},
	{
		name = "CodeGPT4",
		chat = false,
		command = true,
		model = { model = "gpt-4-1106-preview", temperature = 0.8, top_p = 1 },
		system_prompt = "You are an AI working as a code editor.\n\n"
				.. "Please AVOID COMMENTARY OUTSIDE OF THE SNIPPET RESPONSE.\n"
				.. "START AND END YOUR ANSWER WITH:\n\n```",
	},
	{
		name = "Jamba",
		provider = "openrouter",
		chat = true,
		command = true,
		model = { model = "ai21/jamba-1-5-large" },
		system_prompt = require("gp.defaults").chat_system_prompt,
	},
	{
		name = "Gemini",
		provider = "openrouter",
		chat = true,
		command = true,
		model = { model = "google/gemini-flash-1.5-8b" },
		system_prompt = require("gp.defaults").chat_system_prompt,
	},
	{
		name = "Deepseek",
		provider = "openrouter",
		chat = true,
		command = true,
		model = { model = "deepseek/deepseek-chat" },
		system_prompt = require("gp.defaults").chat_system_prompt,
	},
	{
		name = "Claude",
		provider = "openrouter",
		chat = true,
		command = true,
		model = { model = "anthropic/claude-3-5-haiku" },
		system_prompt = require("gp.defaults").chat_system_prompt,
	},
	{
		name = "Llama",
		provider = "openrouter",
		chat = false,
		command = true,
		model = { model = "meta-llama/llama-3.1-8b-instruct:free" },
		system_prompt = require("gp.defaults").code_system_prompt,
	},
}
