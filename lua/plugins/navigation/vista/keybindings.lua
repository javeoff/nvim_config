require("which-key").register({
    -- ['<C-n>'] = {':Vista!<CR>', 'Open file outline menu'},
    ['sN'] = {':Vista nvim_lsp<CR>', 'Open lsp file outline menu'},
}, {
    silent = false,
    noremap = true,
    nowait = true,
})
