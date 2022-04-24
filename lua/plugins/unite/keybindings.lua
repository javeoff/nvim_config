require("which-key").register({
    j = {':Unite jump -here<CR>', 'Open Ripgrep search popup'},
}, {
    prefix = '\\',
    silent = true,
    noremap = true,
    nowait = false,
})
