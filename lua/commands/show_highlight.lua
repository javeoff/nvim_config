vim.api.nvim_create_user_command(
	'ShowHighlight',
	function()
		vim.cmd([[
		    for i1 in synstack(line("."), col("."))
        let i2 = synIDtrans(i1)
        let n1 = synIDattr(i1, "name")
        let n2 = synIDattr(i2, "name")
        echo n1 "->" n2
				endfor
				echo "--"
		]])
	end,
	{ }
)
