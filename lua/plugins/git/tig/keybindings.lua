require('which-key').register({
    ['o'] = {':Tig<CR>', 'Open git project tool menu'},
}, {
    prefix = 'g',
    silent = true,
    noremap = true,
    nowait = false,
})