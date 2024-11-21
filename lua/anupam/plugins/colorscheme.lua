return {
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			local bg = "#282828"
			local bg_dark = "#1d2021"
			local bg_highlight = "#3c3836"
			local bg_search = "#7c6f64"
			local bg_visual = "#504945"
			local fg = "#ebdbb2"
			local fg_dark = "#d5c4a1"
			local fg_gutter = "#928374"
			local border = "#665c54"

			require("gruvbox").setup({
				contrast = "hard", -- or "soft", "medium"
				overrides = {
					Normal = { bg = bg, fg = fg },
					Visual = { bg = bg_visual },
					Search = { bg = bg_search },
					StatusLine = { bg = bg_dark },
					Pmenu = { bg = bg_dark },
					PmenuSel = { bg = bg_highlight },
					VertSplit = { fg = border },
					LineNr = { fg = fg_gutter },
					Comment = { fg = fg_dark, italic = true },
				},
			})
			-- load the colorscheme here
			vim.cmd([[colorscheme gruvbox]])
		end,
	},
}
