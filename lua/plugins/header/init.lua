return {
	'zefei/vim-wintabs',
	lazy = false,
	priority = 49,
	dependencies = {
		'nvim-lualine/lualine.nvim',
		'nvim-tree/nvim-web-devicons'
	},
	config = function()
		require('plugins/header/config')
	end,
	keys = {
    {"<C-c>", "<cmd>WintabsCloseVimtab<CR>", desc = "Delete buffer"},
    {"<C-x>", "<cmd>WintabsClose<CR>", desc = "Delete tab"},
    {"<C-n>", "<cmd>tabnew<CR>", desc = "Create new tab"},
    {"<C-l>", "<cmd>WintabsNext<CR>", desc = "Next buffer"},
    {"<C-h>", "<cmd>WintabsPrev<CR>", desc = "Prev buffer"},
    {"<C-CR>", "<cmd>WintabsAll<CR>", desc = "Enable all buffers"},
	}
}
