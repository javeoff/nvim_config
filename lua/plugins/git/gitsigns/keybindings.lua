require('which-key').register({
    ['b'] = {':Gitsigns blame_line<CR>', 'Blame current line'},
    ['<Tab>'] = {':Gitsigns toggle_current_line_blame<CR>', 'Toggle line blame hints'},
    ['sp'] = {':Gitsigns preview_hunk_inline<CR>', 'Preview current hunk'},
    ['ss'] = {':Gitsigns stage_hunk<CR>', 'Stage current hunk'},
    ['sf'] = {':Gitsigns stage_buffer<CR>', 'Stage current buffer'},
    ['su'] = {':Gitsigns undo_stage_hunk<CR>', 'Undo stage hunk'},
    ['sl'] = {':Gitsigns select_hunk<CR>', 'Preview current hunk'},
    ['sL'] = {':lua require"gitsigns".stage_hunk({vim.fn.line("."), vim.fn.line("v")})<CR>', 'Stage line hunk'},
}, {
    prefix = 'g',
    silent = true,
    noremap = true,
    nowait = false,
})

require('which-key').register({
    ['g'] = {':Gitsigns blame_line<CR>', 'Blame current line'},
    ['b'] = {':Git blame<CR>', 'Blame current file'},
}, {
    prefix = '<Tab>',
    silent = true,
    noremap = true,
    nowait = false,
})
