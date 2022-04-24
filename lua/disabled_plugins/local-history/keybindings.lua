require("which-key").register({
    ['<C-h>'] = {':LocalHistoryToggle<CR>', 'Open file manager popup'},
}, {
    silent = true,
    noremap = true,
    nowait = false,
})
