return {
	'windwp/nvim-ts-autotag',
	event = 'InsertEnter',
	config = function()
		require('plugins/ux/treesitter/autotag/config')
	end
}
