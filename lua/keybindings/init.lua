return {
	'folke/which-key.nvim',
	config = function()
		require('which-key').add({
			{ "s=", "<C-w>=", desc = "Split window", mode = "n" },
			{ "sw", ":w<cr>", desc = "Save buffer", mode = "n" },
			{ "sq", ":q<cr>", desc = "Quit", mode = "n" },
			{ "sa", ":qa<cr>", desc = "Quit all", mode = "n" },
			{ "<Tab>p", ":e package.json<cr>", desc = "Open package.json", mode = "n" },
			{ "<Tab>d", ":e docker-compose.yml<cr>", desc = "Open docker-compose", mode = "n" },
			{ "<Tab>t", ":e tsconfig.json<cr>", desc = "Open tsconfig", mode = "n" },
			{ "<Tab>l", "<C-w>l", mode = "n" },
			{ "<Tab>k", "<C-w>k", mode = "n" },
			{ "<Tab>j", "<C-w>j", mode = "n" },
			{ "<Tab>h", "<C-w>h", mode = "n" },
			{ "vaa", "ggVG", desc = "Select all", mode = "n" },
			{ "U", ":redo<cr>", desc = "Redo", mode = "n" },
			{ "<C-k>", ":tabnext<cr>", desc = "Next tab", mode = "n" }, 
			{ "<C-j>", ":tabprevious<cr>", desc = "Previous tab", mode = "n" }, 
			-- { "<C-l>", ":bnext<cr>", desc = "Next buffer", mode = "n" },
      -- { "<C-h>", ":bprevious<cr>", desc = "Previous buffer", mode = "n" },
		})

		require('which-key').add({
			{ "jk", "<Esc>", desc = "Exit from insert mode", mode = "i" },
			{ "kj", "<Esc>", desc = "Exit from insert mode", mode = "i" },
			{ "<C-l>", "<Esc>la", desc = "Next symbol", mode = "i" }, 
			{ "<C-h>", "<Esc>ha", desc = "Previous symbol", mode = "i" }, 
			{ "<C-w>", "<Esc>wa", desc = "Next symbol", mode = "i" },
      { "<C-b>", "<Esc>ba", desc = "Previous symbol", mode = "i" },
		})

	end
}
