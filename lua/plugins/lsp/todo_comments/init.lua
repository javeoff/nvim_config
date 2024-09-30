return {
    'folke/todo-comments.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim'
    },
		config = function()
			require('plugins/lsp/todo_comments/config')
		end
}
