return {
    'junegunn/fzf.vim',
    dependencies = {
        'junegunn/fzf'
    },
    config = function()
        require('plugins/navigation/fzf/fzf_vim/config')
        require('plugins/navigation/fzf/fzf_vim/keybindings')
    end
}