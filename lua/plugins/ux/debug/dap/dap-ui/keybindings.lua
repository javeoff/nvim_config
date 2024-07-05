require('which-key').register({
		['<Tab>'] = {':lua require"dap.ui.widgets".hover()<CR>', 'Dap Hover'},
		['<Space>'] = {':lua local widgets=require"dap.ui.widgets";widgets.centered_float(widgets.scopes)<CR>', 'Dap Scopes'},
		['t'] = {':lua require"dap".repl.open({}, "vsplit")<CR><C-w>l', 'Open vsplit logs'},
		['m'] = {':lua require"dapui".toggle()<CR>', 'Toggle dapui'},
	}, {
    prefix = 'sd',
    silent = true,
    noremap = true,
    nowait = false,
})
