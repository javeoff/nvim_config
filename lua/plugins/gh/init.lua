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
			{ "<leader>ghcc", "<cmd>GHCloseCommit<cr>", desc = "Close" },
			{ "<leader>ghce", "<cmd>GHExpandCommit<cr>", desc = "Expand" },
			{ "<leader>ghco", "<cmd>GHOpenToCommit<cr>", desc = "Open To" },
			{ "<leader>ghcp", "<cmd>GHPopOutCommit<cr>", desc = "Pop Out" },
			{ "<leader>ghcz", "<cmd>GHCollapseCommit<cr>", desc = "Collapse" },
			{ "<leader>ghip", "<cmd>GHPreviewIssue<cr>", desc = "Preview" },
			{ "<leader>ghlt", "<cmd>LTPanel<cr>", desc = "Toggle Panel" },
			{ "<leader>ghrb", "<cmd>GHStartReview<cr>", desc = "Begin" },
			{ "<leader>ghrc", "<cmd>GHCloseReview<cr>", desc = "Close" },
			{ "<leader>ghrd", "<cmd>GHDeleteReview<cr>", desc = "Delete" },
			{ "<leader>ghre", "<cmd>GHExpandReview<cr>", desc = "Expand" },
			{ "<leader>ghrs", "<cmd>GHSubmitReview<cr>", desc = "Submit" },
			{ "<leader>ghrz", "<cmd>GHCollapseReview<cr>", desc = "Collapse" },
			{ "<leader>ghpc", "<cmd>GHClosePR<cr>", desc = "Close" },
			{ "<leader>ghpd", "<cmd>GHPRDetails<cr>", desc = "Details" },
			{ "<leader>ghpe", "<cmd>GHExpandPR<cr>", desc = "Expand" },
			{ "<leader>ghpo", "<cmd>GHOpenPR<cr>", desc = "Open" },
			{ "<leader>ghpp", "<cmd>GHPopOutPR<cr>", desc = "PopOut" },
			{ "<leader>ghpr", "<cmd>GHRefreshPR<cr>", desc = "Refresh" },
			{ "<leader>ghpt", "<cmd>GHOpenToPR<cr>", desc = "Open To" },
			{ "<leader>ghpz", "<cmd>GHCollapsePR<cr>", desc = "Collapse" },
			{ "<leader>ghtc", "<cmd>GHCreateThread<cr>", desc = "Create" },
			{ "<leader>ghtn", "<cmd>GHNextThread<cr>", desc = "Next" },
			{ "<leader>ghtt", "<cmd>GHToggleThread<cr>", desc = "Toggle" },
		})
	end,
}
