return {
	{
		"sainnhe/sonokai",
		lazy = false,
		priority = 1000,
	},
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{ "sainnhe/edge", name = "Edge", priority = 1000 },
	{
		"zaldih/themery.nvim",
		lazy = false,
		opts = {
			livePreview = true,
			themes = {
				"vim",
				{
					name = "Sonokai Andromeda",
					colorscheme = "sonokai",
					before = [[
						vim.g.sonokai_style = 'andromeda'
						]],
				},
				{
					name = "Catppuccin Late",
					colorscheme = "catppuccin-latte",
				},
				{
					name = "Catppuccin Frappe",
					colorscheme = "catppuccin-frappe",
				},
				{
					name = "Catppuccin Macchiato",
					colorscheme = "catppuccin-macchiato",
				},
				{
					name = "Catppuccin Mocha",
					colorscheme = "catppuccin-mocha",
				},
				{
					name = "Edge Neon",
					colorscheme = "edge",
					before = [[
						vim.g.edge_style = 'neon'
						]],
				},
			},
		},
		config = true,
	},
}
