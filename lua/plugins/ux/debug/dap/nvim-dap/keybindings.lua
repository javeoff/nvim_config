require('which-key').register({
['p'] = {':DapToggleBreakpoint<CR>', 'Toggle breakpoint'},
['o'] = {':DapStepOver<CR>', 'Step over'},
['u'] = {':DapStepOut<CR>', 'Step out'},
['i'] = {':DapStepInto<CR>', 'Step into'},
['s'] = {':DapContinue<CR>', 'Continue'},
['-'] = {':DapTerminate<CR>', 'Terminate'},
['c'] = {':lua require"dap".continue()<CR>', 'Continue'},
['t'] = {':lua require"dap".repl.open({}, "vsplit")<CR><C-w>l', 'Open vsplit logs'},
[']'] = {':lua require"dap".up()<CR>', 'Dap Up'},
['['] = {':lua require"dap".down()<CR>', 'Dap Down'},
	}, {
    prefix = 'sd',
    silent = true,
    noremap = true,
    nowait = false,
})
