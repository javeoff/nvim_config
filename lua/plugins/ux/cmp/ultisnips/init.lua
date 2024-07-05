return {
    'quangnguyen30192/cmp-nvim-ultisnips',
    dependencies = {
        'SirVer/ultisnips',
        'nvim-treesitter/nvim-treesitter',
    },
		config = function()
			require('plugins/ux/cmp/ultisnips/config')
		end,
    enabled = true,
}
