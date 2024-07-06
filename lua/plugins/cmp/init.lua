
return {
    'hrsh7th/nvim-cmp',
    event = "InsertEnter",
    dependencies = {
        { "tzachar/cmp-tabnine", build = "./install.sh" },
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-cmdline',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-nvim-lsp-signature-help',
        'davidsierradz/cmp-conventionalcommits',
        'nvim-lua/plenary.nvim',
        'ray-x/cmp-treesitter',
        "quangnguyen30192/cmp-nvim-ultisnips",
    },
    config = function()
			require("cmp_nvim_ultisnips.mappings")

			require 'cmp'.setup.buffer {
				sources = require 'cmp'.config.sources(
					{ name = 'cmp_tabnine' },
					{ name = 'conventionalcommits' },
					{ name = 'buffer' }
				),
			}
			local formatting = require('plugins/cmp/formatting')
			local mapping = require('plugins/cmp/mapping')
			local local_path = 'plugins/cmp/'
			local cmp = require("cmp")
			local compare = require('cmp.config.compare')
			local tabnine_compare = require('cmp_tabnine.compare')
			cmp.setup({
				completion = {
					completeopt = "menu,menuone,noselect,noinsert",
				},
				sources = {
					{ name = 'ultisnips' },
					{ name = 'cmp_tabnine' },
					{ name = 'npm',                    keyword_length = 4 },
					{ name = 'nvim_lsp' },
					{ name = 'cmp_cmdline' },
					{ name = 'buffer' },
					{ name = 'path' },
					{ name = 'nvim_lsp_signature_help' },
					{ name = 'treesitter' },
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
				experimental = {
					native_menu = false,
				},
			})
    end,
}
