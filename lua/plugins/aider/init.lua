return {
    "nekowasabi/aider.vim",
    dependencies = "vim-denops/denops.vim",
    enabled = true,
    keys = {
        { "§o", ":AiderRun<CR>", desc = "Aider Run" }
    },
    config = function()
        vim.g.aider_command = 'aider --yes-always'
        vim.g.aider_buffer_open_type = 'vsplit'
        vim.g.aider_floatwin_width = 100
        vim.g.aider_floatwin_height = 20

        vim.api.nvim_create_autocmd('User',
            {
                pattern = 'AiderOpen',
                callback =
                    function(args)
                        vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', { buffer = args.buf })
                        vim.keymap.set('n', '<Esc>', '<cmd>AiderHide<CR>', { buffer = args.buf })
                    end
            })
        vim.api.nvim_set_keymap('n', '<leader>aa', ':AiderAddCurrentFile<CR>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<leader>ar', ':AiderAddCurrentFileReadOnly<CR>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<leader>aw', ':AiderAddWeb<CR>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<leader>ax', ':AiderExit<CR>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<leader>ai', ':AiderAddIgnoreCurrentFile<CR>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<leader>aI', ':AiderOpenIgnore<CR>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<leader>aI', ':AiderPaste<CR>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<leader>ah', ':AiderHide<CR>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('v', '<leader>av', ':AiderVisualTextWithPrompt<CR>', { noremap = true, silent = true })
    end
}
