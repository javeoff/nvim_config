-- Keybindings for nvim-treesitter
local opts = { noremap = true, silent = true }

-- Incremental selection
vim.keymap.set('n', 'gnn', '<cmd>lua require("nvim-treesitter.textobjects.selection").select_node()<cr>', opts)
vim.keymap.set('x', 'grn', '<cmd>lua require("nvim-treesitter.textobjects.selection").select_next_node()<cr>', opts)
vim.keymap.set('x', 'grc', '<cmd>lua require("nvim-treesitter.textobjects.selection").select_scope()<cr>', opts)
vim.keymap.set('x', 'grm', '<cmd>lua require("nvim-treesitter.textobjects.selection").select_prev_node()<cr>', opts)

-- Textsubjects
vim.keymap.set('n', '.', '<cmd>lua require("nvim-treesitter.textobjects.textsubjects").textsubjects_smart()<cr>', opts)
vim.keymap.set('x', ';', '<cmd>lua require("nvim-treesitter.textobjects.textsubjects").textsubjects_container_outer()<cr>', opts)
vim.keymap.set('x', 'i;', '<cmd>lua require("nvim-treesitter.textobjects.textsubjects").textsubjects_container_inner()<cr>', opts)
