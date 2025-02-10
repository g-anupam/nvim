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
							},
						},
					},
				},
			})
			vim.cmd([[colorscheme kanagawa-dragon]])
		end,
	},
}
