local colors = vim.g.colors

vim.g.floaterm_width = 0.95
vim.g.floaterm_height = 0.95
vim.g.floaterm_opener = "edit"

vim.cmd('highlight FloatermBorder guibg=' .. colors.bg .. ' guifg=' .. colors.bg .. ' gui=bold')
