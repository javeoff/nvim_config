require("which-key").add({
    { "<Tab>t", ":TodoTrouble<CR>", desc = "Todo list", mode = "n" },
    { "<Tab>o", ":TodoTrouble<CR>", desc = "Todo list", mode = "n" },
    { "<Tab>d", ":Trouble document_diagnostics<CR>", desc = "Document diagnostics", mode = "n" },
  }, {
    silent = false,
    noremap = true,
    nowait = true,
  })
  