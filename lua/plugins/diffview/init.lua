return {
    'sindrets/diffview.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim'
    },
    config = function()
        require('plugins/diffview/keybindings')
    end
}
