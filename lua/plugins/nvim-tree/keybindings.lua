require("which-key").register({
    ['<C-f>'] = {':NvimTreeFindFile<CR>', 'Find file in directory tree'},
    ['<C-n>'] = {':NvimTreeToggle<CR>', 'Open directory tree sidebar'},
    ['<C-e>'] = {':e %:p:h<CR>', 'Open directory tree window'},
}, {
    silent = true,
    noremap = true,
    nowait = false,
})
