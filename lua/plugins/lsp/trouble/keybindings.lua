require("which-key").add({
    { "s.", ":TodoTrouble focus=true<CR>", desc = "Todo list", mode = "n" },
    { "s-", ":Trouble document_diagnostics<CR>", desc = "Document diagnostics", mode = "n" },
		{ "ss", "<cmd>Trouble symbols toggle focus=true win.type=float<cr>", mode = "n" },
  }, {
    silent = false,
    noremap = true,
    nowait = true,
  })
  
