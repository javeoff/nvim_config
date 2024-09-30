capabilities = require("cmp_nvim_lsp").default_capabilities()


local on_attach = function(client, bufnr)
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

    -- require 'illuminate'.on_attach(client)
end

local servers = {
    'eslint',
    'jsonls',
    'diagnosticls',
    'tsls',
    'null-ls',
    'luals',
    'solana',
    'mdx',
    'markdown',
    'rust_analyzer',
    -- 'make',
}

local path = 'plugins/lsp/nvim_lspconfig/servers/';

for _, server in ipairs(servers) do
    require(path .. server)
        .setup(on_attach, capabilities)
end
