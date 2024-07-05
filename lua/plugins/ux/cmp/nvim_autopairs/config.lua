require('nvim-autopairs').setup({
		check_ts = true,
		disable_filetype = { "vim" },
})

local cmp_autopairs = require('nvim-autopairs.completion.cmp')

require('cmp').event:on(
		'confirm_done',
		cmp_autopairs.on_confirm_done({
				map_char = {
						tex = ''
				}
		})
)
