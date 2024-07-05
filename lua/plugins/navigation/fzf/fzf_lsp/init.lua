return {
    'gfanto/fzf-lsp.nvim',
    dependencies = {
        'junegunn/fzf',
    },
    config = function()
        require('plugins/navigation/fzf/fzf_lsp/config')
        require('plugins/navigation/fzf/fzf_lsp/keybindings')
    end
}