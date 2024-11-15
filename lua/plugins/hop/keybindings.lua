require("which-key").add({
		{'f', ':HopChar1<CR>', desc = 'Hop to next character'},
		{'F', ':HopWord<CR>', desc = 'Hop to next word'},
}, {
    silent = true,
    noremap = true,
    nowait = false,
})
