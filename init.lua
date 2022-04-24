vim.g.mapleader = ' '
vim.map = vim.api.nvim_set_keymap

require('default_colors')
require('options')
local colors = require('colors')

local folders = {
    'plugins',
}

local themes = {
    'onedark',
--     'github',
}

vim.cmd('highlight Deftest guifg=red guibg=default')
vim.cmd('highlight Default guibg=' .. colors.bg .. ' guifg=' .. colors.bg .. ' gui=bold')

require('utils/load_plugins').load(folders, themes)
