local P = {}

local null_ls = require('null-ls')
local diagnostics = null_ls.builtins.diagnostics
local completion = null_ls.builtins.completion
local code_actions = null_ls.builtins.code_actions
local hover = null_ls.builtins.hover

P.setup = function(on_attach, capabilities)
    require("null-ls").setup({
        sources = {
            diagnostics.markdownlint,

            completion.spell,

            code_actions.gitsigns,
            code_actions.gitrebase,
            code_actions.eslint,

            hover.dictionary,
        },
        on_attach = on_attach,
        capabilities = capabilities
    })
end

return P
