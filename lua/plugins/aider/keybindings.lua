local wk = require("which-key")

vim.api.nvim_create_autocmd('User',
    {
        pattern = 'AiderOpen',
        callback =
            function(args)
                vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', { buffer = args.buf })
                vim.keymap.set('n', '<Esc>', '<cmd>AiderHide<CR>', { buffer = args.buf })
            end
    })

local aider_mappings = {
    ["§"] = {
        name = "Aider",
        ["<CR>"] = { ":AiderRun<CR>i", "Run Aider" },
        ["v"] = { ":AiderSilentAddCurrentFile<CR>:AiderVoice<CR>", "Add current file (silent)" },
        ["."] = { ":AiderSilentAddCurrentFile<CR>", "Add current file (silent)" },
        ["o"] = { ":AiderAddCurrentFile<CR>i", "Add current file" },
        ["c"] = { ":AiderToggleCodeMode<CR>i", "Toggle code mode" },
        ["i"] = { ":AiderPaste<CR>", "Paste" },
        ["h"] = { ":AiderHide<CR>", "Hide Aider" },
        ["av"] = { ":AiderVisualTextWithPrompt<CR>", "Add visual selection" },
    }
}

wk.register(aider_mappings, { prefix = "" })
