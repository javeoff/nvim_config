return {
	'folke/which-key.nvim',
	config = function()
			require('plugins/keybindings/which-key/noremap/nmap')
			require('plugins/keybindings/which-key/noremap/gui')
			require('plugins/keybindings/options')
			require('plugins/keybindings/insert')
			--require('plugins/keybindings/visual')
	end
}
