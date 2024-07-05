vim.lsp.handlers['textDocument/publishDiagnostics'] =
    vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
        underline = true,
        virtual_text = {
            spacing = 5,
            severity_limit = 'Warning'
        },
        update_in_insert = true
    })

local query = require("vim.treesitter.query")

require 'nvim-treesitter.configs'.setup {
    --[[ ensure_installed = {
        "html",
        "javascript",
        "typescript",
        "tsx",
        "lua",
    }, ]]
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
        disable = { 'latex', 'haskell', 'python', 'text', 'markdown', 'shell', 'note', 'help' },
    },
    --[[ rainbow = {
        enable = true,
        extended_mode = false,
        max_file_lines = nil
    }, ]]
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "gnn",   -- set to `false` to disable one of the mappings
            node_incremental = "grn",
            scope_incremental = "grc",
            node_decremental = "grm",
        },
    },
		textsubjects = {
				enable = true,
				prev_selection = ',', -- (Optional) keymap to select the previous selection
				keymaps = {
						['.'] = 'textsubjects-smart',
						[';'] = 'textsubjects-container-outer',
						['i;'] = 'textsubjects-container-inner',
				},
		},
}
