return {
	'Robitx/gp.nvim',
	config = function()
		require('gp').setup({
			openai_api_key = os.getenv("OPENAI_API_KEY"),
			chat_assistant_prefix = { "🤖:", "[{{agent}}]" },
			chat_topic_gen_model = "gpt-4",
			agents = {
				{
					name = "ChatGPT4",
					chat = true,
					command = false,
					-- string with model name or table with model name and parameters
					model = { model = "gpt-4o", temperature = 0.8, top_p = 1 },
					-- system prompt (use this to specify the persona/role of the AI)
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
					name = "ChatGPT3-5",
					chat = true,
					command = false,
					-- string with model name or table with model name and parameters
					model = { model = "gpt-3.5-turbo-1106", temperature = 1.1, top_p = 1 },
					-- system prompt (use this to specify the persona/role of the AI)
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
					-- string with model name or table with model name and parameters
					model = { model = "gpt-4o", temperature = 0.8, top_p = 1 },
					-- system prompt (use this to specify the persona/role of the AI)
					system_prompt = require("gp.defaults").code_system_prompt,
				},
				{
					provider = "openai",
					name = "CodeGPT4o-mini",
					chat = false,
					command = true,
					-- string with model name or table with model name and parameters
					model = { model = "gpt-4o-mini", temperature = 0.7, top_p = 1 },
					-- system prompt (use this to specify the persona/role of the AI)
					system_prompt = "Please return ONLY code snippets.\nSTART AND END YOUR ANSWER WITH:\n\n```",
				},
				{
					name = "CodeGPT4",
					chat = false,
					command = true,
					-- string with model name or table with model name and parameters
					model = { model = "gpt-4-1106-preview", temperature = 0.8, top_p = 1 },
					-- system prompt (use this to specify the persona/role of the AI)
					system_prompt = "You are an AI working as a code editor.\n\n"
							.. "Please AVOID COMMENTARY OUTSIDE OF THE SNIPPET RESPONSE.\n"
							.. "START AND END YOUR ANSWER WITH:\n\n```",
				},
				{
					name = "CodeGPT3-5",
					chat = false,
					command = true,
					-- string with model name or table with model name and parameters
					model = { model = "gpt-3.5-turbo-1106", temperature = 0.8, top_p = 1 },
					-- system prompt (use this to specify the persona/role of the AI)
					system_prompt = "You are an AI working as a code editor.\n\n"
							.. "Please AVOID COMMENTARY OUTSIDE OF THE SNIPPET RESPONSE.\n"
							.. "START AND END YOUR ANSWER WITH:\n\n```",
				},
			},
			hooks = {
				UnitTests = function(gp, params)
					local template = "I have the following code from {{filename}}:\n\n"
							.. "```{{filetype}}\n{{selection}}\n```\n\n"
							..
							"Please respond by writing table driven unit tests for the code above. also add 'import { describe, test, expect } from vitest' above the code and relative import of function ../filename "
					local agent = gp.get_command_agent()
					gp.Prompt(params, gp.Target.enew, nil, agent.model, template, agent.system_prompt)
				end,
				CodeReview = function(gp, params)
					local template = "I have the following code from {{filename}}:\n\n"
							.. "```{{filetype}}\n{{selection}}\n```\n\n"
							.. "Please analyze for code smells and suggest improvements like Senior typescript engineer. Explain in russian."
					local agent = gp.get_chat_agent()
					gp.Prompt(params, gp.Target.tabnew("markdown"), nil, agent.model, template, agent.system_prompt)
				end,
				Wrong = function(gp, params)
					local template = "I have the following code from {{filename}}:\n\n"
							.. "```{{filetype}}\n{{selection}}\n```\n\n"
							.. "Please say whats wrong with this code, suggest improvements like Senior typescript engineer. Explain in russian."
					local agent = gp.get_chat_agent()
					gp.Prompt(params, gp.Target.tabnew("markdown"), nil, agent.model, template, agent.system_prompt)
				end,
				BufferChatNew = function(gp, _)
					-- call GpChatNew command in range mode on whole buffer
					vim.api.nvim_command("%" .. gp.config.cmd_prefix .. "ChatPaste")
					vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc><Esc>", true, false, true), 'n', false)
					vim.api.nvim_put({"Whats wrong with this code? Respond like Senior typescript engineer. Explain in russian"}, "l", false, true)
					vim.api.nvim_command("GpChatRespond")
				end,
				APIDoc = function(gp, params)
					local template = "I have the following code from {{filename}}:\n\n"
							.. "```{{filetype}}\n{{selection}}\n```\n\n"
							.. "Please respond by writing minimalistic markdown API documentation for the code above.\n\n"
							.. "Ignore private code, public only.\n\n"
							.. "Use minimum number of words and sentences.\n\n"
							.. "\n\nFor function and methods provide just declaration - no word description necessary."
					gp.Prompt(params, gp.Target.enew, nil, gp.config.command_model, template, gp.config.command_system_prompt)
				end,
				TypeDoc = function(gp, params)
					local template = "I have the following code from {{filename}}:\n\n"
							.. "```{{filetype}}\n{{selection}}\n```\n\n"
							.. "Please respond by writing Typedoc documentation for the code above.\n\n"
							-- .. "\n\nFor function and methods provide just declaration - no word description necessary."
					gp.Prompt(params, gp.Target.enew, nil, gp.config.command_model, template, gp.config.command_system_prompt)
				end,
			}
		})
		require('which-key').add({
		  { "c<Tab>", ":GpChatFinder<cr>", desc = "Find GPT chat", mode = "n" },
		  { "c4", ":GpChatNew<cr>:GpAgent ChatGPT4<cr>", desc = "Create GPT-4 chat", mode = "n" },
		  { "c3", ":GpChatNew<cr>", desc = "Create GPT-4 chat", mode = "n" },
		  { "cc", ":GpChatNew<cr>:GpAgent ChatGPT4<cr>", desc = "Start GPT chat", mode = "n" },
		  { "=+", ":GpAppend<cr>", desc = "Append to GPT prompt", mode = "n" },
		  { "§", ":GpChatRespond<cr>", desc = "", mode = "n" },
		})

		require('which-key').add({
		  { "-", ":GpRewrite<cr>", desc = "Rewrite by GPT", mode = "v" },
		  { "_", ":GpVnew<cr>", desc = "Rewrite by GPT", mode = "v" },
		  { "+", ":GpCodeReview<cr>", desc = "Rewrite by GPT", mode = "v" },
		  { "ctr", ":GpRewrite translate from russian to english or english to russian<cr>", desc = "Rewrite by GPT", mode = "v" },
		  { "=x", ":GpRewrite fix current code<cr>", desc = "Rewrite by GPT", mode = "v" },
		  { "=t", ":GpUnitTests<cr>", desc = "Generate tests", mode = "v" },
		  { "=e", ":GpChatPaste<cr>i", desc = "Generate tests", mode = "v" },
		})

	end,
}
