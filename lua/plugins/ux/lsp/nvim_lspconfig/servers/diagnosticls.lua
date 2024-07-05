local P = {}

local filetypes = {
    'javascript',
    'javascriptreact',
    'json',
    'typescript',
    'typescriptreact',
    'css',
    'less',
    'scss',
--     'markdown',
    'pandoc'
}

P.setup = function(on_attach, capabilities)
    local lspconfig = require("lspconfig")

    lspconfig["diagnosticls"].setup({
      on_attach = on_attach,
      capabilities = capabilities,
      filetypes = filetypes,
      init_options = {
        linters = {
          eslint = {
            command = 'eslint_d',
            rootPatterns = { '.git' },
            debounce = 100,
            args = { '--stdin', '--stdin-filename', '%filepath', '--format', 'json' },
            sourceName = 'eslint_d',
            parseJson = {
              errorsRoot = '[0].messages',
              line = 'line',
              column = 'column',
              endLine = 'endLine',
              endColumn = 'endColumn',
              message = '[eslint] ${message} [${ruleId}]',
              security = 'severity'
            },
            securities = {
              [2] = 'error',
              [1] = 'warning'
            }
          },
        },
        filetypes = {
          javascript = 'eslint',
          javascriptreact = 'eslint',
          typescript = 'eslint',
          typescriptreact = 'eslint',
        },
        formatters = {
          eslint_d = {
            command = 'eslint_d',
            args = { '--stdin', '--stdin-filename', '%filename', '--fix-to-stdout' },
            rootPatterns = { '.git' },
          },
          prettier = {
            command = 'prettier',
            args = { '--stdin-filepath', '%filename' }
          }
        },
        formatFiletypes = {
          css = 'prettier',
          javascript = 'eslint_d',
          javascriptreact = 'eslint_d',
          json = 'prettier',
          scss = 'prettier',
          less = 'prettier',
          typescript = 'eslint_d',
          typescriptreact = 'eslint_d',
          json = 'prettier',
          markdown = 'prettier',
        }
      }
    })
end

return P
