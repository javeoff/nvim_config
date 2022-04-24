require("which-key").register({
    ['bn'] = {':WintabsNext<CR>', 'Next buffer'},
    ['bp'] = {':WintabsPrevious<CR>', 'Prev buffer'},
    ['bd'] = {':WintabsClose<CR>', 'Delete buffer'},
    ['<M-l>'] = {':WintabsNext<CR>', 'Next buffer'},
    ['<M-h>'] = {':WintabsPrevious<CR>', 'Prev buffer'},
    ['<M-j>'] = {':tabnext<CR>', 'Next tab'},
    ['<M-k>'] = {':tabprevious<CR>', 'Prev tab'},
}, {
    silent = true,
    noremap = true,
    nowait = false,
})
