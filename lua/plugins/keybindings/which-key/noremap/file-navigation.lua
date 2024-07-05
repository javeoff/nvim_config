require("which-key").register({
	['<Space>k'] = {"<C-u>", "Go up in the file"},
	['<Space>j'] = {"<C-d>", "Go down in the file"},
}, {
	silent = true,
	noremap = true,
	nowait = false,
})
