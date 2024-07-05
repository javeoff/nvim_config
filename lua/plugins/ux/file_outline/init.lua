vim.cmd('set nocompatible')
vim.cmd('filetype plugin on')
vim.cmd('syntax on')

return {
	'stevearc/aerial.nvim',
	event = "BufWinEnter",
	config = function()
		require('aerial').setup({
			backends = { "treesitter", "lsp", "markdown", "man" },
			-- close_automatic_events = "unfocus",
			link_tree_to_folds = false,
			link_folds_to_tree = false,
			keymaps = {
				["l"] = "actions.tree_open",
			},
			on_attach = function(bufnr)
				vim.keymap.set('n', '{', '<cmd>AerialPrev<CR>', {buffer = bufnr})
				vim.keymap.set('n', '}', '<cmd>AerialNext<CR>', {buffer = bufnr})
			end,
			layout = {
				max_width = { 60, 0.2 },
				width = nil,
				min_width = 25,
			},
			filter_kind = {
				"Class",
				"Constructor",
				"Enum",
				"Function",
				"Interface",
				"Constant",
				"Module",
				"Method",
				"Property",
				"Struct",
			},
		})
		-- vim.o.foldlevelstart = 1
		-- vim.o.foldlevel = 1
		require('plugins/ux/file_outline/keybindings')
		-- require('aerial').tree_set_collapse_level(vim.api.nvim_get_current_buf(), 1)
		-- require('aerial').tree_set_collapse_level(0, 1)
		local packer_aerial = vim.api.nvim_create_augroup("packer aerial symbols", {})
		vim.api.nvim_create_autocmd("BufEnter", {
			desc = "set Aerial symbols collapse limit for plugins/init.lua",
			group = packer_aerial,
			pattern = {
				"*"
				-- vim.fn.glob("~/.config/nvim/lua/axie/plugins/init.lua"),
			},
			callback = function()
				local bufnr = vim.api.nvim_get_current_buf()
				vim.defer_fn(function()
					local ok, aerial = pcall(require, "aerial")
					if ok and vim.api.nvim_buf_is_valid(bufnr) then
						aerial.tree_set_collapse_level(bufnr, 1)
					end
				end, 0)
			end,
		})
	end
}
