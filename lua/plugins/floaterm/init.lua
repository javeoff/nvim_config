local P = {}

function P.load(use)
    use {
        'voldikss/vim-floaterm',
        config = function()
            require('plugins/floaterm/keybindings')
            require('plugins/floaterm/options')
        end
    }
end

return P
