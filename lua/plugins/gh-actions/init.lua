return {
	'topaxi/gh-actions.nvim',
	keys = {
		{ '<leader>gh', '<cmd>GhActions<cr>', desc = 'Open Github Actions' },
	},
	build = 'make',
	opts = {
		--- The browser executable path to open workflow runs/jobs in
		---@type string|nil
		browser = nil,
		--- Interval to refresh in seconds
		refresh_interval = 10,
		--- How much workflow runs and jobs should be indented
		indent = 2,
		icons = {
			workflow_dispatch = '⚡️',
			conclusion = {
				success = '✓',
				failure = 'X',
				startup_failure = 'X',
				cancelled = '⊘',
				skipped = '◌',
			},
			status = {
				unknown = '?',
				pending = '○',
				queued = '○',
				requested = '○',
				waiting = '○',
				in_progress = '●',
			},
		},
		highlights = {
			GhActionsRunIconSuccess = { link = 'LspDiagnosticsVirtualTextHint' },
			GhActionsRunIconFailure = { link = 'LspDiagnosticsVirtualTextError' },
			GhActionsRunIconStartup_failure = { link = 'LspDiagnosticsVirtualTextError' },
			GhActionsRunIconPending = { link = 'LspDiagnosticsVirtualTextWarning' },
			GhActionsRunIconRequested = { link = 'LspDiagnosticsVirtualTextWarning' },
			GhActionsRunIconWaiting = { link = 'LspDiagnosticsVirtualTextWarning' },
			GhActionsRunIconIn_progress = { link = 'LspDiagnosticsVirtualTextWarning' },
			GhActionsRunIconCancelled = { link = 'Comment' },
			GhActionsRunIconSkipped = { link = 'Comment' },
			GhActionsRunCancelled = { link = 'Comment' },
			GhActionsRunSkipped = { link = 'Comment' },
			GhActionsJobCancelled = { link = 'Comment' },
			GhActionsJobSkipped = { link = 'Comment' },
			GhActionsStepCancelled = { link = 'Comment' },
			GhActionsStepSkipped = { link = 'Comment' },
		},
		split = {
			relative = 'editor',
			position = 'right',
			size = 60,
			win_options = {
				wrap = false,
				number = false,
				foldlevel = nil,
				foldcolumn = '0',
				cursorcolumn = false,
				signcolumn = 'no',
			},
		},

	},
}
