return {
	'folke/which-key.nvim',
	config = function()
		require('which-key').add({
			{ "s=", "<C-w>=", desc = "Split window", mode = "n" },
			{ "sw", ":w<cr>", desc = "Save buffer", mode = "n" },
			{ "sq", ":q<cr>", desc = "Quit", mode = "n" },
			{ "sa", ":qa<cr>", desc = "Quit all", mode = "n" },
			{ "<Tab>l", "<C-w>l", mode = "n" },
			{ "<Tab>k", "<C-w>k", mode = "n" },
			{ "<Tab>j", "<C-w>j", mode = "n" },
			{ "<Tab>h", "<C-w>h", mode = "n" },
		})

		require('which-key').add({
			{ "jk", "<Esc>", desc = "Exit from insert mode", mode = "i" },
			{ "kj", "<Esc>", desc = "Exit from insert mode", mode = "i" },
			{ "jk", "<Esc>", desc = "Exit from insert mode", mode = "v" },
			{ "kj", "<Esc>", desc = "Exit from insert mode", mode = "v" },
		})

	end
}
