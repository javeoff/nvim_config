return {
    'neovim/nvim-lspconfig',
    requires = {
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/nvim-cmp',
        'b0o/schemastore.nvim',
        'jose-elias-alvarez/null-ls.nvim',
        requires = { 'nvim-lua/plenary.nvim' },
        'jose-elias-alvarez/nvim-lsp-ts-utils',
        requires = { 'nvim-lua/plenary.nvim' },
    },
    with_config = true,
}
