return {
    'junegunn/fzf.vim',
    dependencies = {
        'junegunn/fzf'
    },
    config = function()
        require('plugins/fzf/fzf_vim/config')
        require('plugins/fzf/fzf_vim/keybindings')
    end
}
