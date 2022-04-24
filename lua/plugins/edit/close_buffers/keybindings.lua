require("which-key").register({
    ['bD'] = {':BDelete! hidden<CR>', 'Delete all buffers but current'},
    ['bc'] = {':BDelete nameless<CR>', 'Clear no-name buffers'},
}, {
    silent = true,
    noremap = true,
    nowait = false,
})
