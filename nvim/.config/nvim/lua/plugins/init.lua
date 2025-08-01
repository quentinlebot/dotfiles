return {
	{
		"christoomey/vim-tmux-navigator",
		enabled = true,
		event = "VeryLazy",
		keys = {
			{ "<C-h>", "<cmd>TmuxNavigateLeft<cr>", desc = "Navigate to left pane" },
			{ "<C-j>", "<cmd>TmuxNavigateDown<cr>", desc = "Navigate to down pane" },
			{ "<C-k>", "<cmd>TmuxNavigateUp<cr>", desc = "Navigate to up pane" },
			{ "<C-l>", "<cmd>TmuxNavigateRight<cr>", desc = "Navigate to right pane" },
		},
	},
	{
		"nvim-lualine/lualine.nvim",
		opts = function(_, opts)
			opts.sections.lualine_z = {}
		end,
	},
	{ "typicode/bg.nvim", lazy = false },
}
