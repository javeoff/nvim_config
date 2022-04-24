return function()
    vim.lsp.handlers['textDocument/publishDiagnostics'] =
        vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
            underline = true,
            virtual_text = {
                spacing = 5,
                severity_limit = 'Warning'
            },
            update_in_insert = true
        })

    require'nvim-treesitter.configs'.setup {
        ensure_installed = {
            "html",
            "javascript",
            "typescript",
            "tsx",
            "lua"
        },
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = false,
            disable = { 'latex', 'haskell', 'python' },
        },
        rainbow = {
            enable = true,
            extended_mode = false,
            max_file_lines = nil
        },
    }
end
