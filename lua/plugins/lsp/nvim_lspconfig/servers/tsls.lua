local P = {}

P.setup = function(on_attach, capabilities)
		require("lspconfig.configs").vtsls = require("vtsls").lspconfig

    require("lspconfig").vtsls.setup({
        server = {
            on_attach = function(client, bufnr)
                on_attach(client, bufnr)
            end,
            capabilities = capabilities,
        },
    })
end

return P
