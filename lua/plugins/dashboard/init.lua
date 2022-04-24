local P = {}

function P.load(use)
    use {
        'goolord/alpha-nvim',
        requires = { 'kyazdani42/nvim-web-devicons' },
        config = function ()
            require('plugins/dashboard/options')
        end
    }
end

return P
