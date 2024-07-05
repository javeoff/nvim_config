local local_path = '~/shared/shared-configs/shared-dotfiles/.config/neovim-config/lua/plugins/ux/cmp/ultisnips/'
vim.g.UltiSnipsSnippetDirectories = {local_path .. 'snippets'}
vim.g.UltiSnipsSnippetsDir = local_path .. 'snippets'

require("cmp_nvim_ultisnips").setup {
	filetype_source = "treesitter",
	show_snippets = "all",
	documentation = function(snippet)
		return snippet.description
	end
}
