require('which-key').add({
  { "sdp", "<cmd>DapToggleBreakpoint<CR>", desc = "Toggle breakpoint", mode = "n" },
  { "sdo", "<cmd>DapStepOver<CR>", desc = "Step over", mode = "n" },
  { "sdu", "<cmd>DapStepOut<CR>", desc = "Step out", mode = "n" },
  { "sdi", "<cmd>DapStepInto<CR>", desc = "Step into", mode = "n" },
  { "sds", "<cmd>DapContinue<CR>", desc = "Continue", mode = "n" },
  { "sd-", "<cmd>DapTerminate<CR>", desc = "Terminate", mode = "n" },
  { "sdc", "<cmd>lua require'dap'.continue()<CR>", desc = "Continue", mode = "n" },
  { "sdt", "<cmd>lua require'dap'.repl.open({}, 'vsplit')<CR><C-w>l", desc = "Open vsplit logs", mode = "n" },
  { "sd]", "<cmd>lua require'dap'.up()<CR>", desc = "Dap Up", mode = "n" },
  { "sd[", "<cmd>lua require'dap'.down()<CR>", desc = "Dap Down", mode = "n" },
})
