local P = {}

function P.load(use)
    use {
        'Shougo/unite.vim',
        config = function()
--             require('plugins/unite/options')
            require('plugins/unite/keybindings')
        end
    }
end

return P
