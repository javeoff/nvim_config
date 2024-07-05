require("which-key").register({
    ['\\f'] = {':lua require"jester".run_file()<CR>', 'Run jest file'},
}, {
    silent = true,
    noremap = true,
    nowait = false,
})
