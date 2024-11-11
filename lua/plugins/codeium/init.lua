return {
	"Exafunction/codeium.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"hrsh7th/nvim-cmp",
	},
	config = function()
		require("codeium").setup({
			enable_chat = true,
			-- to use virtual text, uncomment the following line
			virtual_text = {
				enabled = true,
				key_bindings = {
					accept = "§§",
				}
			},

		})
		-- require('plugins/codeium/config')
		-- require('plugins/codeium/keybindings')
	end
}
