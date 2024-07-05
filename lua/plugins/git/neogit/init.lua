return {
    'TimUntersberger/neogit',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'sindrets/diffview.nvim'
    },
    config = function()
        require('plugins/git/neogit/config')
        require('plugins/git/neogit/keybindings')
    end,
    enabled = false,
}
