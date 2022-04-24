local P = {}

function P.load(use)
    use {
        'folke/which-key.nvim',
        config = function()
            require('plugins/keybindings/options')
            require('plugins/keybindings/insert')
            require('plugins/keybindings/noremap')
        end
    }
    use {
        'kovetskiy/vim-empty-lines'
    }
end

return P
