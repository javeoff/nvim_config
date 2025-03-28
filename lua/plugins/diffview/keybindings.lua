require('which-key').add({
    {'ggk', ':DiffviewOpen<CR>:DiffviewToggleFiles<CR>', desc = 'Open git diff menu'},
    {'ggu', ':DiffviewFileHistory<CR>', desc = 'Open git diff menu'},
    {'ggh', ':DiffviewFileHistory %<CR>', desc = 'Open git file history'},
    {'gf', ':DiffviewOpen<CR>', desc = 'Open diff view'},
})
