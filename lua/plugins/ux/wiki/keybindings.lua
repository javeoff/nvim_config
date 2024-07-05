require("which-key").register({
    ['<C-n>'] = {':VimwikiToggleListItem<CR>', 'toggle markdown list item'},
}, {
    silent = true,
    noremap = true,
    nowait = true,
})
