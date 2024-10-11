require("mason-null-ls").setup({
    ensure_installed = {
        -- Javascript/Typescript
        'eslint_d',
        'prettier',
        'prettierd',

        -- Markdown
        --'alex',
        'markdownlint',
        --'write_good',

        -- Sh
        'shellcheck',
        --'shellharden',
        --'shfmt',

        -- Yaml
        'actionlint',
        --'yamlfmt',
        --'yamllint',
        'cfn_lint', -- yaml + json

        -- Json
        'fixjson',
        'jq',

        -- Lua
        -- 'luacheck',
        'selene',
        'stylua',

        -- Dockerfile
        'hadolint',

        -- Rust
        'rust_analyzer',
    },
    automatic_installation = false,
    automatic_setup = true, -- Recommended, but optional
})
