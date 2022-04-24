local P = {}

function P.load(use)
    use {
        'liuchengxu/vista.vim',
    }

    require('plugins/vista/keybindings')
end

return P
