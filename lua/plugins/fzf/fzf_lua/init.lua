return {
    'ibhagwan/fzf-lua',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
        'nvim-lua/plenary.nvim',
    },
    config = function()
        require('plugins/fzf/fzf_lua/config')
        require('plugins/fzf/fzf_lua/keybindings')
    end
}
