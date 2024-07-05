require("which-key").register({
    ['t'] = {':TodoTrouble<CR>', 'Todo list'},
    ['o'] = {':TodoTrouble<CR>', 'Todo list'},
    ['d'] = {':Trouble document_diagnostics<CR>', 'Document diagnostics'},
}, {
    prefix = '<Tab>',
    silent = false,
    noremap = true,
    nowait = true,
})
