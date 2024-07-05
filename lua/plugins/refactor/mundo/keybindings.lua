require("which-key").register({
    ['<C-h>'] = {':MundoToggle<CR>', 'Toggle file history'}
}, {
    silent = true,
    noremap = true,
    nowait = false,
})
