require("which-key").register({
	['s<Tab>h'] = {":set cursorline!<CR>", "toggle highlight"},
	['s<Tab>n'] = {":set number!<CR>", "toggle number"},
	['<M-c>'] = {':set cursorline!<CR>', 'Toggle cursor highlight mode'},
}, {
	silent = true,
	noremap = true,
	nowait = false,
})
