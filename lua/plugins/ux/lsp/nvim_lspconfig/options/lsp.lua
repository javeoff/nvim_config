local lsp = vim.lsp

local border_opts = {
    border = "single",
    focusable = false,
    scope = "line"
}

vim.diagnostic.config({
    virtual_text = true, -- toggle inline diagnostic
    float = border_opts,
    underline = true,
})

lsp.handlers["textDocument/signatureHelp"] = lsp.with(
    lsp.handlers.signature_help,
    border_opts
)
lsp.handlers["textDocument/hover"] = lsp.with(
    lsp.handlers.hover,
    border_opts
)
