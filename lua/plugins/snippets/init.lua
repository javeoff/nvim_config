return {
    'quangnguyen30192/cmp-nvim-ultisnips',
    dependencies = {
        'SirVer/ultisnips',
        'nvim-treesitter/nvim-treesitter',
    },
		config = function()
			require('plugins/snippets/config')
		end,
    enabled = true,
}
