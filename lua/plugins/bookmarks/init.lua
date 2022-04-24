local P = {}

function P.load(use)
    use {
        'MattesGroeger/vim-bookmarks',
        requires = 'Shougo/unite.vim',
        config = function()
            require('plugins/bookmarks/options')
        end
    }
    use {
        'vim-scripts/FavEx',
    }
    require('plugins/bookmarks/keybindings')
end

return P
