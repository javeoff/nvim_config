local P = {}

P.setup = function(on_attach, capabilities)
    require("typescript").setup({
        server = {
            on_attach = function(client, bufnr)
                on_attach(client, bufnr)
                require('nvim-navic').attach(client, bufnr)

                require("which-key").register({
                    ['gd'] = {':TypescriptGoToSourceDefinition<CR>', 'Typescript go to source'},
                }, {
                    silent = false,
                    noremap = true,
                    nowait = true,
                })
            end,
            capabilities = capabilities,
        },
    })
end

return P
