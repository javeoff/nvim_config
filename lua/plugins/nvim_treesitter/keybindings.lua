local which_key = require("which-key")

local opts = { noremap = true, silent = true }

local mappings = {
  { "gnn", "<cmd>lua require('nvim-treesitter.textobjects.select').select_node()<cr>", desc = "Select Node" },
  { "grn", "<cmd>lua require('nvim-treesitter.textobjects.selection').select_next_node()<cr>", desc = "Select Next" },
  { "grc", "<cmd>lua require('nvim-treesitter.textobjects.selection').select_scope()<cr>", desc = "Select Scope" },
  { "grm", "<cmd>lua require('nvim-treesitter.textobjects.selection').select_prev_node()<cr>", desc = "Select Previous" },
  -- { ".", "<cmd>lua require('nvim-treesitter.textobjects.textsubjects').textsubjects_smart()<cr>", desc = "Textsubjects Smart" },
  -- { ";", "<cmd>lua require('nvim-treesitter.textobjects.textsubjects').textsubjects_container_outer()<cr>", desc = "Textsubjects Container Outer" },
  -- { "i;", "<cmd>lua require('nvim-treesitter.textobjects.textsubjects').textsubjects_container_inner()<cr>", desc = "Textsubjects Container Inner" },
}

which_key.add(mappings, opts)
