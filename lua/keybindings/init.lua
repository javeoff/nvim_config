return {
	'folke/which-key.nvim',
	config = function()
		require("which-key").register({
			['s='] = {'<C-w>=', 'Split window'},
			['sw'] = {':w<CR>', 'Save buffer'},
			['sq'] = {':q<CR>', 'Quit'},
			['sa'] = {':qa<CR>', 'Quit all'},
		}, {
		    silent = true,
		    noremap = true,
		    nowait = false,
		})
	end
}
