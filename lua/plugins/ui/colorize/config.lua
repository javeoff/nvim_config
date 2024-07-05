require('nvim-highlight-colors').setup {}

vim.cmd [[ set termguicolors ]]
vim.cmd [[ set t_Co=256 ]]
vim.cmd [[ HighlightColorsOn ]]

require("nvim-highlight-colors").turnOn() 
