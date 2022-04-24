local P = {}

function P.load(use)
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
        config = function()
            require('plugins/nvim-tree/keybindings')
				end
    }

		require('plugins/nvim-tree/options')
end

return P
