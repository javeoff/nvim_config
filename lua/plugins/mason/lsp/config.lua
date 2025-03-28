
require("mason-lspconfig").setup {
		ensure_installed = {
			'eslint',
			'jsonls',
			'eslint-lsp',
			'vtsls',
			'diagnosticls',
			'lua_ls',
			'cssls',
			'cssmodules_ls',
			'unocss',
			'marksman',
			'quick_lint_js',
			'prosemd_lsp',
			-- 'autotools-language-server',
				--[[ 'solang', -- Solana
				'mdx_analyzer', -- MDX
				'rust_analyzer', -- Rust
				'autotools-language-server', -- Make
				
				-- 'stylua',

				-- Javascript
				'quick_lint_js',
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
				'remark_ls',
				'zk',

				-- C
				-- 'csharp_ls', ]]
		},
		automatic_installation = true,
}
