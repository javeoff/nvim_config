local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)

local on_attach = function(client, bufnr)
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

    require 'illuminate'.on_attach(client)
end

local servers = {
    'eslint',
    'jsonls',
    'diagnosticls',
    'tsserver',
    'null-ls',
}

local path = 'plugins/lsp/nvim_lspconfig/servers/';

for _, server in ipairs(servers) do
    require(path .. server)
        .setup(on_attach, capabilities)
end
