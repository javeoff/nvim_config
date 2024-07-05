require("which-key").register({
    ['n'] = {':lua require("illuminate").goto_next_reference(true)<CR>', 'Next highlighted reference'},
    ['N'] = {':lua require("illuminate").goto_prev_reference(true)<CR>', 'Previous highlighted reference'},
}, {
    silent = true,
    noremap = true,
    nowait = false,
})
