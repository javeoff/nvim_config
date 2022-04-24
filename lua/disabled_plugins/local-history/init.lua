local P = {}

function P.load(use)
    use {
        'dinhhuy258/vim-local-history',
        run = ':UpdateRemotePlugins',
        config = function()
            require('plugins/local-history/keybindings')
        end
    }
end

return P
