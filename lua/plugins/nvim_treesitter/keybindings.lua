local which_key = require("which-key")

local opts = { noremap = true, silent = true }

local mappings = {
  g = {
    name = "Treesitter",
    n = { "<cmd>lua require('nvim-treesitter.textobjects.selection').select_node()<cr>", "Select Node" },
    r = {
      name = "Selection",
      n = { "<cmd>lua require('nvim-treesitter.textobjects.selection').select_next_node()<cr>", "Select Next" },
      c = { "<cmd>lua require('nvim-treesitter.textobjects.selection').select_scope()<cr>", "Select Scope" },
      m = { "<cmd>lua require('nvim-treesitter.textobjects.selection').select_prev_node()<cr>", "Select Previous" },
    },
  },
  ["."] = { "<cmd>lua require('nvim-treesitter.textobjects.textsubjects').textsubjects_smart()<cr>", "Textsubjects Smart" },
  [";"] = { "<cmd>lua require('nvim-treesitter.textobjects.textsubjects').textsubjects_container_outer()<cr>", "Textsubjects Container Outer" },
  ["i;"] = { "<cmd>lua require('nvim-treesitter.textobjects.textsubjects').textsubjects_container_inner()<cr>", "Textsubjects Container Inner" },
}

which_key.register(mappings, opts)
