return {
	'lewis6991/satellite.nvim',
	config = function()
		require('satellite').setup {
			current_only = false,
			winblend = 50,
			zindex = 40,
			excluded_filetypes = {},
			width = 2,
			handlers = {
				search = {
					enable = true,
				},
				diagnostic = {
					enable = true,
					signs = {'-', '=', '≡'},
					min_severity = vim.diagnostic.severity.HINT,
				},
				gitsigns = {
					enable = true,
					signs = { -- can only be a single character (multibyte is okay)
						add = "│",
						change = "│",
						delete = "-",
					},
				},
				marks = {
					enable = true,
					show_builtins = false, -- shows the builtin marks like [ ] < >
				},
			},
		}
  end
}

