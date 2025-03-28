require('which-key').add({
  { "<leader>gtl", "<cmd>FzfLua git_stash<cr>", desc = "Git stash fzf menu", mode = "n" },
  { "<leader>gb", "<cmd>FzfLua git_branches<cr>", desc = "Git branches fzf menu", mode = "n" },
  { "<leader>gf", "<cmd>FzfLua git_status<cr>", desc = "Git files fzf menu", mode = "n" },
})

require('which-key').add({
  { "sf", "<cmd>lua require('fzf-lua').files()<cr>", desc = "Files fzf menu", mode = "n" },
  { "sg", "<cmd>lua require('fzf-lua').live_grep({ winopts = { height = 0.40, width = 1.0, row = 1, col = 0, preview = { layout = 'horizontal', horizontal = 'right:50%' } } })<cr>", desc = "Grep fzf menu", mode = "n" },
  { "su", "<cmd>lua require('fzf-lua').oldfiles({ winopts = { preview = { layout = 'horizontal', horizontal = 'right:50%' }, border = { ' ', ' ', ' ', ' ', '│', ' ', ' ', ' ' } } })<cr>", desc = "Oldfiles fzf menu", mode = "n" },
  -- { "st", "<cmd>FzfLua tabs<cr>", desc = "Show tabs menu", mode = "n" },
  { "sc", "<cmd>lua require('fzf-lua').changes({ winopts = { win_height = 0.8, win_width = 0.5, win_row = 0, win_col = 0.5 }, preview = { hidden = 'nohidden', border = 'border' }})<cr>", desc = "Changes", mode = "n" },
  { "sj", "<cmd>lua require('fzf-lua').jumps({ winopts = { win_height = 0.9, win_width = 0.7, win_row = 0.5, win_col = 0.5 }, preview = { hidden = 'nohidden', border = 'border' }})<cr>", desc = "Jumps", mode = "n" },
  { "slr", "<cmd>lua require('fzf-lua').lsp_references({ winopts = { preview = { hidden = 'nohidden', border = 'border' }}})<cr>", desc = "LSP References", mode = "n" },
  { "s/", "<cmd>FzfLua resume<cr>", desc = "Resume fzf-lua filter", mode = "n" },
  { "si", "<cmd>FzfLua blines<cr>", desc = "Lines in loaded buffers", mode = "n" },
})

require('which-key').add({
  { "<S-\\>", "<cmd>FzfLua command_history<cr>", desc = "Command history", mode = "n" },
})

