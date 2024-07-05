require'nvim-treesitter.configs'.setup {
	textobjects = {
		move = {
			enable = true,
			set_jumps = true, -- whether to set jumps in the jumplist
			goto_next_start = {
				["]m"] = "@function.outer",
				["]]"] = "@class.outer",
				["]p"] = "@parameter.outer",
				["]f"] = "@call.outer",
				["]b"] = "@block.outer",
			},
			goto_next_end = {
				["]M"] = "@function.outer",
				["]["] = "@class.outer",
				["]P"] = "@parameter.outer",
				["]B"] = "@block.outer",
				["]F"] = "@call.outer",
			},
			goto_previous_start = {
				["[m"] = "@function.outer",
				["[["] = "@class.outer",
				["[p"] = "@parameter.outer",
				["[f"] = "@call.outer",
				["[b"] = "@block.outer",
			},
			goto_previous_end = {
				["[M"] = "@function.outer",
				["[]"] = "@class.outer",
				["[P"] = "@parameter.outer",
				["[F"] = "@call.outer",
				["[B"] = "@block.outer",
			},
		},
		select = {
			enable = true,

			-- Automatically jump forward to textobj, similar to targets.vim
			lookahead = true,

			keymaps = {
				-- You can use the capture groups defined in textobjects.scm
				["[k"] = "@function.outer",
				["[l"] = "@function.inner",
				["[c"] = "@class.outer",
				["]c"] = "@class.inner",
			},
		},
	},
}
