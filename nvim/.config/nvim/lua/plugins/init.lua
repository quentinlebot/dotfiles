return {
	"christoomey/vim-tmux-navigator",
	{
		"nvim-lualine/lualine.nvim",
		opts = function(_, opts)
			opts.sections.lualine_z = {}
		end,
	},
	{ "typicode/bg.nvim", lazy = false },
}
