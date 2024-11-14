require('which-key').add({
    {'gk', ':DiffviewOpen<CR>:DiffviewToggleFiles<CR>', desc = 'Open git diff menu'},
    {'gu', ':DiffviewFileHistory<CR>', desc = 'Open git diff menu'},
    {'gh', ':DiffviewFileHistory %<CR>', desc = 'Open git file history'},
    {'gf', ':DiffviewOpen<CR>', desc = 'Open diff view'},
})
