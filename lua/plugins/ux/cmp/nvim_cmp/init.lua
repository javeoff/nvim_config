return {
    'hrsh7th/nvim-cmp',
    event = "InsertEnter",
    dependencies = {
        { "tzachar/cmp-tabnine", build = "./install.sh" },
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-cmdline',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-nvim-lsp-signature-help',
        'davidsierradz/cmp-conventionalcommits',
        'nvim-lua/plenary.nvim',
        'ray-x/cmp-treesitter',
        "quangnguyen30192/cmp-nvim-ultisnips",
    },
    config = function()
        require('plugins/ux/cmp/nvim_cmp/config')
    end
}
