local default_colors = require('options/default_colors');
local default_options = require('options/default_options');
local bind_options = require('utils/bind_options');

vim.cmd('map <C-m> <Nop>')
vim.cmd('filetype on')

bind_options(default_options)
vim.g.colors = default_colors;

return {}
