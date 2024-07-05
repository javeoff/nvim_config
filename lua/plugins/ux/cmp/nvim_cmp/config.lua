local local_path = 'plugins/cmp/nvim_cmp/'
local cmp = require("cmp")
local compare = require('cmp.config.compare')
local tabnine_compare = require('cmp_tabnine.compare')

require("cmp_nvim_ultisnips.mappings")

local formatting = require('plugins/ux/cmp/nvim_cmp/options/formatting')
local mapping = require('plugins/ux/cmp/nvim_cmp/options/mapping')

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

require 'cmp'.setup.buffer {
	sources = require 'cmp'.config.sources(
		{ name = 'cmp_tabnine' },
		{ name = 'conventionalcommits' },
		{ name = 'buffer' }
	),
}
