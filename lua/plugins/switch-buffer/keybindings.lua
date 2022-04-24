require("which-key").register({
    ['<C-b>'] = {':SwitchBuffer<CR>', 'Find file in directory tree'},
}, {
    silent = true,
    noremap = true,
    nowait = false,
})
