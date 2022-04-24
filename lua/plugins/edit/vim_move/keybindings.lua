require("which-key").register({
    ['<M-l>'] = {'Move selected text to the right'},
    ['<M-k>'] = {'Move selected text to the up'},
    ['<M-j>'] = {'Move selected text to the down'},
    ['<M-h>'] = {'Move selected text to the left'},
}, {
    silent = true,
    noremap = true,
    nowait = false,
})
