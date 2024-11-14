vim.api.nvim_create_autocmd('User',
    {
        pattern = 'AiderOpen',
        callback =
            function(args)
                vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', { buffer = args.buf })
                vim.keymap.set('n', '<Esc>', '<cmd>AiderHide<CR>', { buffer = args.buf })
            end
    })

vim.api.nvim_set_keymap('n', '§<CR>', ':AiderRun<CR>i', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '§v', ':AiderSilentAddCurrentFile<CR>:AiderVoice<CR>', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '§.', ':AiderSilentAddCurrentFile<CR>', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '§o', ':AiderAddCurrentFile<CR>i', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '§c', ':AiderToggleCodeMode<CR>i', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '§i', ':AiderPaste<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '§h', ':AiderHide<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '§av', ':AiderVisualTextWithPrompt<CR>', { noremap = true, silent = true })
