require('which-key').add({
  { "sn", ":AerialToggle<cr>", desc = "Toggle file outline", mode = "n" },
  { "s<Tab>", ":AerialNavOpen<CR>", desc = "Open file outline", mode = "n" },
  { "z<Tab>", ":lua vim.o.foldlevel = 1<cr>", desc = "Set fold level to the first level", mode = "n" },
})
