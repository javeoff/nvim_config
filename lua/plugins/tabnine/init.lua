return {
    'tzachar/cmp-tabnine',
    dependencies = {
			'hrsh7th/nvim-cmp',
		},
		-- commit = '8c4512d',
		priority = 49,
		lazy = true,
		build = './install.sh',
		config = function()
			local tabnine = require('cmp_tabnine.config')

			tabnine:setup({
							max_lines = 1000;
							max_num_results = 2;
							sort = true;
							run_on_every_keystroke = true;
							snippet_placeholder = '..';
							show_prediction_strength = true
			})
			-- require('plugins/ux/cmp/cmp_tabnine/config')
		end
}
