return {
    'lewis6991/gitsigns.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim'
    },
    config = function()
        require('plugins/gitsigns/config')
        require('plugins/gitsigns/keybindings')
    end,
    enabled = true
}
