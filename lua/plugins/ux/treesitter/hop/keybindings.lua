require("which-key").register({
		['f'] = {':HopChar1<CR>', 'Hop to next character'},
    ['F'] = {':HopWord<CR>', 'Hop to next word'},
}, {
    silent = true,
    noremap = true,
    nowait = false,
})
