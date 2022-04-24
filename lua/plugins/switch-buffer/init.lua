local P = {}

function P.load(use)
    use {
        'Yohannfra/Nvim-Switch-Buffer',
        config = function()
            require('plugins/switch-buffer/keybindings')
        end
    }
end

return P
