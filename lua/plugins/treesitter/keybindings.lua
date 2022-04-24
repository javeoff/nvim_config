require("which-key").register({
    ['<C-m>'] = {':SymbolsOutline<CR>', 'Open symbols file tree'},
}, {
    silent = true,
    noremap = true,
    nowait = false,
})
