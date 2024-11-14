return {
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
		local agent = gp.get_command_agent()
		gp.Prompt(params, gp.Target.vnew, agent, template)
	end,
	Wrong = function(gp, params)
		local template = "I have the following code from {{filename}}:\n\n"
				.. "```{{filetype}}\n{{selection}}\n```\n\n"
				.. "Please say whats wrong with this code, suggest improvements like Senior typescript engineer. Explain in russian."
		local agent = gp.get_chat_agent("Claude")
		gp.Prompt(params, gp.Target.tabnew("markdown"), agent, template)
	end,
	BufferChatNew = function(gp, _)
		vim.api.nvim_command("%" .. gp.config.cmd_prefix .. "ChatPaste")
		vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc><Esc>", true, false, true), 'n', false)
		vim.api.nvim_put({ "Whats wrong with this code? Respond like Senior typescript engineer. Explain in russian" },
			"l", false, true)
		vim.api.nvim_command("GpChatRespond")
	end,
	TypeDoc = function(gp, params)
		local template = "I have the following code from {{filename}}:\n\n"
				.. "```{{filetype}}\n{{selection}}\n```\n\n"
				..
				"Please respond by writing markdown Typedoc documentation for the code above to copy your answer and paste above that code. Dont send js code function, dont send any text, no description, only typedoc to copy and paste \n\n"
		local agent = gp.get_command_agent('Claude')
		gp.Prompt(params, gp.Target.prepend, agent, template)
	end,
	RemoveComments = function(gp, params)
		local template = "I have the following code from {{filename}}:\n\n"
				.. "```{{filetype}}\n{{selection}}\n```\n\n"
				..
				"Please remove any comments in the code above "
		local agent = gp.get_command_agent('Llama')
		gp.Prompt(params, gp.Target.rewrite, agent, template)
	end,
	Update = function(gp, params)
		local template = "I have the following code from {{filename}}:\n\n"
				.. "```{{filetype}}\n{{selection}}\n```\n\n"
				..
				"Please rewrite the code above without any mistakes or just pretty code. Send me only the fixed code markdown no comments. "
		local agent = gp.get_command_agent('Claude')
		gp.Prompt(params, gp.Target.rewrite, agent, template)
	end,
	Explain = function(gp, params)
		local template = "I have the following code from {{filename}}:\n\n"
				.. "```{{filetype}}\n{{selection}}\n```\n\n"
				.. "Please respond by explaining the code above."
		local agent = gp.get_chat_agent('Claude')
		gp.Prompt(params, gp.Target.popup, agent, template)
	end,
}
