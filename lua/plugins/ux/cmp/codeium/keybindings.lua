vim.keymap.set('i', '§§', function () return vim.fn['codeium#Accept']() end, { expr = true })
vim.keymap.set('i', '§[', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
vim.keymap.set('i', '§]', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
vim.keymap.set('i', '§c', function() return vim.fn['codeium#Clear']() end, { expr = true })