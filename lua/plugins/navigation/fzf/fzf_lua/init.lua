return {
    'ibhagwan/fzf-lua',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
        'nvim-lua/plenary.nvim',
    },
    config = function()
        require('plugins/navigation/fzf/fzf_lua/config')
        require('plugins/navigation/fzf/fzf_lua/keybindings')
    end
}
