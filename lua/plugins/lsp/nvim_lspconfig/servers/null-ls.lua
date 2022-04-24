local P = {}

local null_ls = require('null-ls')
local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
local completion = null_ls.builtins.completion
local code_actions = null_ls.builtins.code_actions
local hover = null_ls.builtins.hover

local with_diagnostics_code = function(builtin)
    return builtin.with({
        diagnostics_format = "#{m} [#{c}]",
    })
end

local with_root_file = function(builtin, file)
    return builtin.with({
        condition = function(utils)
            return utils.root_has_file(file)
        end,
    })
end

P.setup = function(on_attach, capabilities)
    require("null-ls").setup({
        sources = {
--             formatting.eslint,
    formatting.prettier,
    -- formatting.stylua,

    diagnostics.eslint,
    diagnostics.markdownlint,

    completion.spell,

    code_actions.gitsigns,
    code_actions.gitrebase,
    code_actions.eslint,

    hover.dictionary,
    },
    on_attach = function(client, bufnr)
        on_attach(client, bufnr)

        --[[ if client.resolved_capabilities.document_formatting then
          vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
        end ]]
    end,
    capabilities = capabilities
    })
end

return P
