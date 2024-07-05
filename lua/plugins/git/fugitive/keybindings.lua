require('which-key').register({
    ['a'] = {':Git add .<CR>', 'Add all files to the git'},
    ['B'] = {':Git blame<CR>', 'Show git blame'},
}, {
    prefix = 'g',
    silent = true,
    noremap = true,
    nowait = false,
})
