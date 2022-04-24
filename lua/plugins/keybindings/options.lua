local wk = require("which-key")
local colors = vim.g.colors

vim.cmd("highlight WhichKeyFloat guifg="..colors.fg.." guibg=".. colors.bg .."")
vim.cmd("highlight WhichKeyDesc guifg="..colors.fg.." guibg=".. colors.bg .."")
vim.cmd("highlight WhichKeyGroup guifg="..colors.green.." guibg=".. colors.bg .."")

wk.setup({
    plugins = {
        marks = true,
        registers = true,
    },
    ignore_missing = true,
    popup_mappings = {
        scroll_down = '<c-d>',
        scroll_up = '<c-u>',
    },
    layout = {
        height = { min = 4, max = 25 },
        width = { min = 20, max = 100 },
        spacing = 3,
        align = "left",
    },
})

