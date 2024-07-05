require("which-key").register({
	['<M-p>'] = {':bnext<CR>', 'Open next buffer'},
	['<M-o>'] = {':bprev<CR>', 'Open previous buffer'},
}, {
	silent = true,
	noremap = true,
	nowait = false,
})
