return {
    'Exafunction/codeium.vim',
    --lazy = true,
		config = function()
			require('plugins/ux/cmp/codeium/config')
			require('plugins/ux/cmp/codeium/keybindings')
		end
}
