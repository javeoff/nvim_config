require("which-key").register({
    ['<leader><Tab>'] = {':DiagflowToggle<CR>', 'Toggle inline diagnostics'},
}, {
    silent = true,
    noremap = true,
    nowait = true,
})
