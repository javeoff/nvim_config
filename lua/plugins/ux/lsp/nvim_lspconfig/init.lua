return {
    'neovim/nvim-lspconfig',
    dependencies = {
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/nvim-cmp',
        'b0o/schemastore.nvim',
        'jose-elias-alvarez/null-ls.nvim',
				'nvim-lua/plenary.nvim',
        'jose-elias-alvarez/typescript.nvim',
    },
		config = function()
			require('plugins/ux/lsp/nvim_lspconfig/options/load_servers')
			require('plugins/ux/lsp/nvim_lspconfig/options/diagnostic_signs')
			require('plugins/ux/lsp/nvim_lspconfig/options/lsp')
			require('plugins/ux/lsp/nvim_lspconfig/keybindings')
		end
}
