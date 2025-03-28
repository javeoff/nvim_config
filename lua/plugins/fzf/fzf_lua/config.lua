local remap = vim.api.nvim_set_keymap
local opts = { noremap=true, silent=true }

local actions = require "fzf-lua.actions"
require'fzf-lua'.setup {
    height       = 0.40,            -- window height
    width        = 1,               -- window width
    row          = 1,               -- window row position (0=top, 1=bottom)
    col          = 0.50,            -- window col position (0=left, 1=right)
    border       = { '', '─', '', '', '│', '', '', '' },
    preview = {
        hidden       = 'hidden',
        wrap         = 'nowrap',
        border       = 'border',
        vertical     = 'up:50%',
        horizontal   = 'right:60%',
        layout       = 'horizontal',
        title        = true,
        scrollbar    = true,
        scrollchar   = '█',
        flip_columns = 120,
        default      = "builtin",
    },
    hls = {
        normal     = 'Normal',
        border     = 'Default',
        cursor     = 'Cursor',
        cursorline = 'Visual',
    },
    keymap = {
        builtin = {
            -- neovim `:tmap` mappings for the fzf win
            ["<C-q>"]      = { actions.buf_del, actions.resume },
            ["<C-o>"]        = "toggle-fullscreen",
            -- Only valid with the 'builtin' previewer
            ["<F3>"]        = "toggle-preview-wrap",
            ["<C-p>"]        = "toggle-preview",
            -- Rotate preview clockwise/counter-clockwise
            ["§"]        = "toggle-preview-ccw",
            ["<F6>"]        = "toggle-preview-cw",
            ["<C-d>"]       = "preview-page-down",
            ["<C-u>"]       = "preview-page-up",
            ["<S-left>"]    = "preview-page-reset",
        },
        fzf = {               -- fzf '--bind=' options
            ["ctrl-p"]          = "toggle-preview",
            ["f3"]              = "toggle-preview-wrap",
            ["ctrl-D"]          = "preview-page-down",
            ["ctrl-U"]          = "preview-page-up",
            ["ctrl-u"]          = "unix-line-discard",
            ["ctrl-f"]          = "half-page-down",
            ["ctrl-b"]          = "half-page-up",
            ["ctrl-a"]          = "beginning-of-line",
            ["ctrl-e"]          = "end-of-line",
            ["ctrl-A"]          = "toggle-all",
        },
    },
}
