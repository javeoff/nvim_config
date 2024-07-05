return {
	'L3MON4D3/LuaSnip',
	version = "v2.*",
	build = "make install_jsregexp",
	event = "InsertEnter *",
	dependencies = {
    "stevearc/vim-vscode-snippets",
  },
	config = function()
		require('plugins/ux/cmp/luasnip/config')
	end,
}
