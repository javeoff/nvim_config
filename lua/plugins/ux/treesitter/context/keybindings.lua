require("which-key").register({
    ['<Tab>'] = {':ContextToggle<CR><CR>', 'Toggle Context'},
}, {
    prefix = '<Tab>',
    silent = false,
    noremap = true,
    nowait = true,
})
