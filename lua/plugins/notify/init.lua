local P = {}

function P.load(use)
    use {
        'rcarriga/nvim-notify',
        config = function()
            require('plugins/notify/options')
        end
    }
end

return P
