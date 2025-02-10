return {
	{
		"rebelot/kanagawa.nvim",
		priority = 1000,
		config = function()
			require("kanagawa").setup({
				theme = "dragon",
				commentStyle = { italic = true },
				keywordStyle = { italic = true },
				functionStyle = { italic = true },
				statementStyle = { bold = true },
				colors = {
					theme = {
						all = {
							ui = {
								bg_gutter = "none",
								bg = "#181616",
								bg_dark = "#13110f",
								bg_highlight = "#24221e",
								fg = "#C4C1B9",
								syntax = {
									comment = "#8C7F70",
									keyword = "#E46876",
									string = "A1B56C",
									operator = "#E6B673",
								},
							},
						},
					},
				},
			})
			vim.cmd([[colorscheme kanagawa-dragon]])
		end,
	},
}
