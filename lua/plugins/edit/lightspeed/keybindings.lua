require("which-key").register({
    ['S'] = {'Search after and move cursor to appended keys'},
    ['s'] = {'Search before and move cursor to appended keys'},
}, {
    silent = true,
    noremap = true,
    nowait = false,
})
