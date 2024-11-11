require("which-key").add({
	{ "s.",     ":TodoTrouble focus=true<CR>",                               desc = "Todo list",            mode = "n" },
	{ "<Space>d",     ":Trouble document_diagnostics<CR>",                         desc = "Document diagnostics", mode = "n" },
	{ "<Tab><Tab>",     ":Trouble<CR>",                         desc = "Document diagnostics", mode = "n" },
	{ "<Tab>t",     ":Trouble diagnostics<CR>",                         desc = "Document diagnostics", mode = "n" },
	{ "s<Tab>", "<cmd>Trouble symbols toggle focus=true win.type=float<cr>", mode = "n" },
})
