return {
	'goolord/alpha-nvim',
	config = function()
		require('plugins/ui/dashboard/options')
		require('plugins/ui/dashboard/color_animation')
	end,
	dependencies = {
			'nvim-tree/nvim-web-devicons',
			'yegappan/mru',
	},
	priority = 1000,
	lazy = false,
}
