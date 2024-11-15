require("which-key").add({
    {'vaf', ':TSTextobjectSelect @function.outer<CR>', desc = 'Select outer of function'},
    {'vif', ':TSTextobjectSelect @function.inner<CR>', desc = 'Select inner of function'},
}, {
    silent = true,
    noremap = true,
    nowait = false,
})
