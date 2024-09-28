return {
	'folke/which-key.nvim',
	config = function()
	require('which-key').add({
	  { "s=", "<C-w>=", desc = "Split window", mode = "n" },
	  { "sw", ":w<cr>", desc = "Save buffer", mode = "n" },
	  { "sq", ":q<cr>", desc = "Quit", mode = "n" },
	  { "sa", ":qa<cr>", desc = "Quit all", mode = "n" },
	})

	require('which-key').add({
	  { "jk", "<Esc>", desc = "Exit from insert mode", mode = "i" },
	  { "kj", "<Esc>", desc = "Exit from insert mode", mode = "i" },
	})

	end
}
