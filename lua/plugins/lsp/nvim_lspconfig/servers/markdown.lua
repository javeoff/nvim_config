local M = {}

M.setup = function(on_attach, capabilities)
    require("lspconfig").marksman.setup({
        on_attach = on_attach,
        capabilities = capabilities,
    })
    require("lspconfig").prosemd_lsp.setup({
        on_attach = on_attach,
        capabilities = capabilities,
    })
    --[[ require("lspconfig").remark_ls.setup({
        on_attach = on_attach,
        capabilities = capabilities,
    }) ]]
    require("lspconfig").zk.setup({
        on_attach = on_attach,
        capabilities = capabilities,
    })
end

return M
