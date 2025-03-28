require 'nvim-treesitter.configs'.setup {
    ensure_installed = {
        "html",
        "javascript",
        "typescript",
        "tsx",
        "lua",
    },
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
        disable = { 'latex', 'haskell', 'python', 'text', 'markdown', 'shell', 'note', 'help' },
    },
    rainbow = {
        enable = true,
        extended_mode = false,
        max_file_lines = nil
    },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "gnn",
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
            ['i;'] = { 'textsubjects-container-inner', desc = "Select inside containers (classes, functions, etc.)" },
        },
    },
}
