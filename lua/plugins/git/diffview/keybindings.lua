require('which-key').register({
    ['k'] = {':DiffviewOpen<CR>:DiffviewToggleFiles<CR>', 'Open git diff menu'},
    ['u'] = {':DiffviewFileHistory<CR>', 'Open git diff menu'},
    ['h'] = {':DiffviewFileHistory %<CR>:DiffviewToggleFiles<CR>', 'Open git file history'},
}, {
    prefix = 'g',
    silent = true,
    noremap = true,
    nowait = false,
})
