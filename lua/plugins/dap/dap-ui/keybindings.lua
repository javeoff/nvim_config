require('which-key').add({
  { "sd<Tab>", "<cmd>lua require'dap.ui.widgets'.hover()<CR>", desc = "Dap Hover", mode = "n" },
  { "sd<Space>", "<cmd>lua local widgets=require'dap.ui.widgets';widgets.centered_float(widgets.scopes)<CR>", desc = "Dap Scopes", mode = "n" },
  { "sdt", "<cmd>lua require'dap'.repl.open({}, 'vsplit')<CR><C-w>l", desc = "Open vsplit logs", mode = "n" },
  { "sdm", "<cmd>lua require'dapui'.toggle()<CR>", desc = "Toggle dapui", mode = "n" },
})

