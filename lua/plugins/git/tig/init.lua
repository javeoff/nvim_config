return {
    'iberianpig/tig-explorer.vim',
    dependencies = {
        'rbgrouleff/bclose.vim'
    },
    config = function()
        require('plugins/git/tig/config')
        require('plugins/git/tig/keybindings')
    end
}