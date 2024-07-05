require("which-key").register({
    ['vaf'] = {':TSTextobjectSelect @function.outer<CR>', 'Select outer of function'},
    ['vif'] = {':TSTextobjectSelect @function.inner<CR>', 'Select inner of function'},
}, {
    silent = true,
    noremap = true,
    nowait = false,
})
