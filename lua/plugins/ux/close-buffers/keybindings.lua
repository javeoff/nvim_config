require("which-key").register({
    ['Bq'] = {':BDelete! hidden<CR>', 'Delete all buffers but current'},
    ['Bc'] = {':BDelete nameless<CR>', 'Clear no-name buffers'},
    ['<M-Q>'] = {':BDelete! hidden<CR>', 'Delete all buffers but current'},
}, {
    silent = true,
    noremap = true,
    nowait = false,
})
