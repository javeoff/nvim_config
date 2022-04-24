local map = vim.api.nvim_set_keymap

map('n', '<C-m>', ':Vista!!<CR>', {noremap = true, silent = false})

require("which-key").register({
    ['<C-m>'] = {':Vista!!<CR>', 'Open file tree menu'},
}, {
    silent = true,
    noremap = true,
    nowait = false,
})
