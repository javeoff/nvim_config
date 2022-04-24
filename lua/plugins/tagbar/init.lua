local P = {}

function P.load(use)
 use {
    'preservim/tagbar',
    config = function()
        require('plugins/tagbar/keybindings')
    end
 }
end

return P
