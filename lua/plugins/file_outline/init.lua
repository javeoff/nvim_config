vim.cmd('set nocompatible')
vim.cmd('filetype plugin on')
vim.cmd('syntax on')

return {
	'stevearc/aerial.nvim',
	event = "BufWinEnter",
	config = function()
		require('aerial').setup({
			backends = { "treesitter", "lsp", "markdown", "man" },
			link_tree_to_folds = false,
			link_folds_to_tree = false,
			keymaps = {
				["l"] = "actions.tree_open",
			},
			on_attach = function(bufnr)
				vim.keymap.set('n', '{', '<cmd>AerialPrev<CR>', { buffer = bufnr })
				vim.keymap.set('n', '}', '<cmd>AerialNext<CR>', { buffer = bufnr })
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
				"Module",
				"Method",
				"Struct",
			},
		})
		vim.o.foldlevel = 1
		require('plugins/file_outline/keybindings')
		local packer_aerial = vim.api.nvim_create_augroup("packer aerial symbols", {})
		vim.api.nvim_create_autocmd("BufEnter", {
			group = packer_aerial,
			pattern = {
				"*"
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
