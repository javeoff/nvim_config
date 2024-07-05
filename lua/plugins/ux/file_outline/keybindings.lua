require("which-key").register({
    ['sn'] = {':AerialToggle<CR>', 'Toggle file outline'},
    ['z<Tab>'] = {':lua vim.o.foldlevel = 1<CR>', 'Set fold level to the first level'}
}, {
    silent = true,
    noremap = true,
    nowait = true,
})
