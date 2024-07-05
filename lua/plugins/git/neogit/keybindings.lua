require('which-key').register({
    ['l'] = {':Neogit<CR>', 'Open commit menu'},
}, {
    prefix = 'g',
    silent = true,
    noremap = true,
    nowait = false,
})