return {
    'sindrets/diffview.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim'
    },
    config = function()
        -- require('plugins/git/diffview/config')
        require('plugins/git/diffview/keybindings')
    end
}
