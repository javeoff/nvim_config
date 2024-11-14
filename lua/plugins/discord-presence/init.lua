return {
	'IogaMaster/neocord',
	event = "VeryLazy",
	enabled = true,
	config = function()
		require("neocord").setup({
			logo                = "auto",
			logo_tooltip        = nil,
			main_image          = "language",
			client_id           = "1157438221865717891",
			log_level           = nil,
			debounce_timeout    = 10,
			blacklist           = {},
			file_assets         = {},
			show_time           = true,
			global_timer        = false,

			editing_text        = "Editing %s",
			file_explorer_text  = "Browsing %s",
			git_commit_text     = "Committing changes",
			plugin_manager_text = "Managing plugins",
			reading_text        = "Reading %s",
			workspace_text      = "Working on %s",
			line_number_text    = "Line %s out of %s",
			terminal_text       = "Using Terminal",
		})
	end
}
