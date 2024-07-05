require('onedark').setup {
	style = 'dark',
	transparent = true,
	code_style = {
		functions = 'bold',
	},
	colors = vim.g.colors,
  highlights = {
        TSTagAttribute = {fg='$orange'},
        TSKeyword = {fg = '$blue'},
        TSString = {fg = '$green'},
        TSFunction = {fg = '$light_gray'},
        TSType = { fg = '$yellow' },
        TSProperty = { fg = '$red' },

        TSPunctSpecial = { fg = '$light_gray' },
        jsxClosePunct = { fg = '$light_gray' },

        Title  = { fg = '$red', fmt = 'bold' },
        typescriptIdentifierName = { fg = '$fg' },
        TSTag = {fg = '$fg', fmt = 'bold'},
        TSParameter = {fg = '$fg'},
    }
}

require('onedark').load()
