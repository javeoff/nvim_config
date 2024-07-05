require("which-key").register({
    -- ['bn'] = {':WintabsNext<CR>', 'Next buffer'},
    -- ['bp'] = {':WintabsPrevious<CR>', 'Prev buffer'},
    -- ['sn'] = {':tabnew<CR>', 'Create new tab'},
    ['<M-d>'] = {':WintabsClose<CR>', 'Delete buffer'},
    ['<M-D>'] = {':WintabsCloseVimtab<CR>', 'Delete tab'},
    ['<M-n>'] = {':tabnew<CR>', 'Create new tab'},
    ['<M-l>'] = {':WintabsNext<CR>', 'Next buffer'},
    ['<M-h>'] = {':WintabsPrevious<CR>', 'Prev buffer'},
    ['<M-k>'] = {':tabnext<CR>', 'Next tab'},
    ['<M-j>'] = {':tabprevious<CR>', 'Prev tab'},
    -- ['si'] = {':tabprevious<CR>', 'Prev tab'},
    -- ['so'] = {':tabnext<CR>', 'Next tab'},
}, {
    silent = true,
    noremap = true,
    nowait = false,
})
