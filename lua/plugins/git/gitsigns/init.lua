return {
    'lewis6991/gitsigns.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim'
    },
    config = function()
        require('plugins/git/gitsigns/config')
        require('plugins/git/gitsigns/keybindings')
    end,
    enabled = false
}
