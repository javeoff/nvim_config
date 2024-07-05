return {
	'thmsmlr/gpt.nvim',
	enabled = false,
	opts = { silent = true, noremap = true },
	config = function()
		require('gpt').setup({
			api_key = os.getenv("OPENAI_API_KEY"),
		})
		vim.keymap.set('v', 'cr', require('gpt').replace, {
			silent = true,
			noremap = true,
			desc = "[G]pt [R]ewrite"
		})
		vim.keymap.set('v', 'cp', require('gpt').visual_prompt, {
			silent = false,
			noremap = true,
			desc = "[G]pt [P]rompt"
		})
		vim.keymap.set('n', 'cp', require('gpt').prompt, {
			silent = true,
			noremap = true,
			desc = "[G]pt [P]rompt"
		})
		vim.keymap.set('n', 'cc', require('gpt').cancel, {
			silent = true,
			noremap = true,
			desc = "[G]pt [C]ancel"
		})
		vim.keymap.set('i', 'cp', require('gpt').prompt, {
			silent = true,
			noremap = true,
			desc = "[G]pt [P]rompt"
		})
	end,
}
