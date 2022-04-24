require("which-key").register({
    ['<C-,>'] = {':TagbarToggle<CR>', 'Toggle tags tree sidebar'},
}, {
    silent = true,
    noremap = true,
    nowait = false,
})
