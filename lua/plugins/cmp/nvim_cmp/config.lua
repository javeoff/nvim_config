return function()
    local local_path = 'plugins/cmp/nvim_cmp/'
    local cmp = require("cmp")
    local compare = require('cmp.config.compare')
--     local tabnine_compare = require('cmp_tabnine.compare')

    local formatting = require(local_path .. 'formatting')
    local mapping = require(local_path .. 'mapping')

    require("cmp_nvim_ultisnips.mappings")

    cmp.setup({
        completion = {
            completeopt = "menu,menuone,noselect,noinsert",
        },
        sources = {
--             { name = 'cmp_tabnine' },
            { name = 'nvim_lsp' },
            { name = 'buffer' },
            { name = 'ultisnips' },
        },
        snippet = {
            expand = function(args)
              vim.fn["UltiSnips#Anon"](args.body)
            end
        },
        sorting = {
            priority_weight = 2,
            comparators = {
              tabnine_compare,
              compare.offset,
              compare.exact,
              compare.score,
              compare.recently_used,
              compare.kind,
              compare.sort_text,
              compare.length,
              compare.order,
            },
        },
        formatting = formatting,
            mapping = mapping,
    })
end
