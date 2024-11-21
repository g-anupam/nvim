return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local lualine = require("lualine")
		local lazy_status = require("lazy.status") -- Ensure lazy.nvim is installed

		-- Gruvbox-inspired colors
		local colors = {
			bg = "#282828", -- Dark background
			fg = "#ebdbb2", -- Light foreground
			yellow_orange = "#d79921", -- Signature Gruvbox yellow-orange
			cyan = "#8ec07c",
			green = "#b8bb26",
			magenta = "#d3869b",
			blue = "#83a598",
			red = "#fb4934",
			inactive_bg = "#3c3836", -- Slightly lighter for inactive
			semilightgray = "#928374", -- Neutral for inactive
		}

		local my_lualine_theme = {
			normal = {
				a = { bg = colors.yellow_orange, fg = colors.bg, gui = "bold" }, -- Highlighted
				b = { bg = colors.bg, fg = colors.fg },
				c = { bg = colors.bg, fg = colors.fg },
			},
			insert = {
				a = { bg = colors.yellow_orange, fg = colors.bg, gui = "bold" }, -- Highlighted
				b = { bg = colors.bg, fg = colors.fg },
				c = { bg = colors.bg, fg = colors.fg },
			},
			visual = {
				a = { bg = colors.yellow_orange, fg = colors.bg, gui = "bold" }, -- Highlighted
				b = { bg = colors.bg, fg = colors.fg },
				c = { bg = colors.bg, fg = colors.fg },
			},
			command = {
				a = { bg = colors.yellow_orange, fg = colors.bg, gui = "bold" }, -- Highlighted
				b = { bg = colors.bg, fg = colors.fg },
				c = { bg = colors.bg, fg = colors.fg },
			},
			replace = {
				a = { bg = colors.yellow_orange, fg = colors.bg, gui = "bold" }, -- Highlighted
				b = { bg = colors.bg, fg = colors.fg },
				c = { bg = colors.bg, fg = colors.fg },
			},
			inactive = {
				a = { bg = colors.inactive_bg, fg = colors.semilightgray, gui = "bold" },
				b = { bg = colors.inactive_bg, fg = colors.semilightgray },
				c = { bg = colors.inactive_bg, fg = colors.semilightgray },
			},
		}

		-- Configure lualine with the custom theme
		lualine.setup({
			options = {
				theme = my_lualine_theme,
			},
			sections = {
				lualine_x = {
					{
						lazy_status.updates,
						cond = lazy_status.has_updates,
						color = { fg = colors.yellow_orange },
					},
					{ "encoding" },
					{ "fileformat" },
					{ "filetype" },
				},
			},
		})
	end,
}
