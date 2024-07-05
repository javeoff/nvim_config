return {
	'doums/darcula',
	config = function()
		require('themes/darcula/colors')
		require('themes/darcula/options')
		require("lipoide").setup({
      transparent = false, -- boolean
      transparent_column = false, -- boolean
      comment_italic = false -- boolean
    })
	end,
}
