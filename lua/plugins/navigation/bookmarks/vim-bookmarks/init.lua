return {
	'MattesGroeger/vim-bookmarks',
	dependencies = {
		'Shougo/unite.vim',
		'vim-scripts/FavEx'
	},
	config = function()
		require('plugins/navigation/bookmarks/vim-bookmarks/config')
		require('plugins/navigation/bookmarks/vim-bookmarks/keybindings')
	end,
	enabled = true,
}
