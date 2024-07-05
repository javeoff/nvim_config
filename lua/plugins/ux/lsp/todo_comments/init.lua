return {
    'folke/todo-comments.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim'
    },
		config = function()
			require('plugins/ux/lsp/todo_comments/config')
		end
}
