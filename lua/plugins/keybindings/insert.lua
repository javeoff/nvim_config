local map = vim.api.nvim_set_keymap

map('i', 'jk', '<ESC>', {noremap = true, silent = false})
map('i', 'kj', '<ESC>', {noremap = true, silent = false})

require("which-key").register({
    ['jk'] = '<Insert Mode> Exit from insert mode',
    ['kj'] = '<Insert Mode> Exit from insert mode',
})
