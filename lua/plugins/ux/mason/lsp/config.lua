
require("mason-lspconfig").setup {
		ensure_installed = {
				--[[ 'solang', -- Solana
				'mdx_analyzer', -- MDX
				'rust_analyzer', -- Rust
				'autotools-language-server', -- Make
				'diagnosticls',
				-- 'stylua',

				-- Javascript
				'quick_lint_js',
				'tsserver',
				'vtsls',

				-- Web
				'eslint',
				'html',
				'jsonls',

				-- CSS
				'cssls',
				'cssmodules_ls',
				'unocss',

				-- Other
				'dotls', -- Dot
				-- 'spectral', -- OpenAPI
				'lua_ls',
				'dockerls',
				'yamlls', -- Yaml

				-- Markdown
				'marksman',
				'prosemd_lsp',
				'remark_ls',
				'zk',

				-- C
				-- 'csharp_ls', ]]
		},
		-- automatic_installation = true,
}
