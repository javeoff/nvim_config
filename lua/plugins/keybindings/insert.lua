local map = vim.api.nvim_set_keymap

map('i', 'jk', '<ESC>', {noremap = true, silent = false})
map('i', 'kj', '<ESC>', {noremap = true, silent = false})
map('i', '<C-l>', '<Right>', {noremap = true, silent = false})
map('i', '<C-h>', '<Left>', {noremap = true, silent = false})
map('i', '<C-u>', '<BS>', {noremap = true, silent = false})
map('i', '<C-p>', '<ESC>pi', {noremap = true, silent = false})
--vim.keymap.set('i', '§c', function() return vim.fn['codeium#Clear']() end, { expr = true })


require("which-key").register({
    ['jk'] = '<Insert Mode> Exit from insert mode',
    ['kj'] = '<Insert Mode> Exit from insert mode',
})
