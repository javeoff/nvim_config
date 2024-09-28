return {
    'gfanto/fzf-lsp.nvim',
    dependencies = {
        'junegunn/fzf',
    },
    config = function()
        require('plugins/fzf/fzf_lsp/config')
        require('plugins/fzf/fzf_lsp/keybindings')
    end
}
