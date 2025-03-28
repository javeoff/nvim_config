return {
    'lukas-reineke/indent-blankline.nvim',
    config = function()
        vim.opt.list = true
        vim.opt.listchars:append "space:⋅"
        vim.opt.listchars:append "eol:↴"
        vim.opt.listchars:append("tab:│ ")

        local highlight = {
            "CursorColumn",
            "Whitespace",
        }
        -- vim.api.nvim_set_hl(0, "Whitespace", { bg = "#000000" })

        require("ibl").setup {
            debounce = 100,
            indent = {
                -- highlight = highlight,
                char = '│'
            },
            --[[ whitespace = {
             highlight = highlight,
             remove_blankline_trail = false,
            }, ]]
            scope = {
                -- exclude = { language = { "lua" } },
                -- highlight = { "Function", "Label" },
                show_start = true,
                show_end,
            },
        }

        vim.api.nvim_set_hl(0, "Whitespace", { bg = "#111111" })
        vim.api.nvim_set_hl(0, "CursorColumn", { fg = "#222222" })
    end,
}
