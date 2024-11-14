return {
	"ldelossa/gh.nvim",
	dependencies = {
		{
			"ldelossa/litee.nvim",
			config = function()
				require("litee.lib").setup()
			end,
		},
	},
	config = function()
		require("litee.gh").setup()
		local wk = require("which-key")
		wk.add({
			{ "ghcc", ":GHCloseCommit<cr>", desc = "Close", mode = "n" },
			{ "ghce", ":GHExpandCommit<cr>", desc = "Expand", mode = "n" },
			{ "ghco", ":GHOpenToCommit<cr>", desc = "Open To", mode = "n" },
			{ "ghcp", ":GHPopOutCommit<cr>", desc = "Pop Out", mode = "n" },
			{ "ghcz", ":GHCollapseCommit<cr>", desc = "Collapse", mode = "n" },
			{ "ghip", ":GHPreviewIssue<cr>", desc = "Preview", mode = "n" },
			{ "ghlt", ":LTPanel<cr>", desc = "Toggle Panel", mode = "n" },
			{ "ghrb", ":GHStartReview<cr>", desc = "Begin", mode = "n" },
			{ "ghrc", ":GHCloseReview<cr>", desc = "Close", mode = "n" },
			{ "ghrd", ":GHDeleteReview<cr>", desc = "Delete", mode = "n" },
			{ "ghre", ":GHExpandReview<cr>", desc = "Expand", mode = "n" },
			{ "ghrs", ":GHSubmitReview<cr>", desc = "Submit", mode = "n" },
			{ "ghrz", ":GHCollapseReview<cr>", desc = "Collapse", mode = "n" },
			{ "ghpc", ":GHClosePR<cr>", desc = "Close", mode = "n" },
			{ "ghpd", ":GHPRDetails<cr>", desc = "Details", mode = "n" },
			{ "ghpe", ":GHExpandPR<cr>", desc = "Expand", mode = "n" },
			{ "ghpo", ":GHOpenPR<cr>", desc = "Open", mode = "n" },
			{ "ghpp", ":GHPopOutPR<cr>", desc = "PopOut", mode = "n" },
			{ "ghpr", ":GHRefreshPR<cr>", desc = "Refresh", mode = "n" },
			{ "ghpt", ":GHOpenToPR<cr>", desc = "Open To", mode = "n" },
			{ "ghpz", ":GHCollapsePR<cr>", desc = "Collapse", mode = "n" },
			{ "ghtc", ":GHCreateThread<cr>", desc = "Create", mode = "n" },
			{ "ghtn", ":GHNextThread<cr>", desc = "Next", mode = "n" },
			{ "ghtt", ":GHToggleThread<cr>", desc = "Toggle", mode = "n" },
		})
	end,
}
