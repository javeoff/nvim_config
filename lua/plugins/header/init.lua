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
    {"<M-d>", "<cmd>lua require('wintabs').close()<CR>", desc = "Delete buffer"},
    {"<M-D>", "<cmd>lua require('wintabs').close_vimtab()<CR>", desc = "Delete tab"},
    {"<M-n>", "<cmd>tabnew<CR>", desc = "Create new tab"},
    {"<M-l>", "<cmd>lua require('wintabs').next()<CR>", desc = "Next buffer"},
    {"<M-h>", "<cmd>lua require('wintabs').previous()<CR>", desc = "Prev buffer"},
    {"<M-k>", "<cmd>tabnext<CR>", desc = "Next tab"},
    {"<M-j>", "<cmd>tabprevious<CR>", desc = "Prev tab"},
	}
}
