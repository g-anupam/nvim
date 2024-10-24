return {
	"mfussenegger/nvim-lint",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local lint = require("lint")

		lint.linters_by_ft = {
			javascript = { "eslint_d" },
			typescript = { "eslint_d" },
			javascriptreact = { "eslint_d" },
			typescriptreact = { "eslint_d" },
			python = { "pylint" },
			lua = { "luacheck" }, -- Added Lua linter
			c = { "cppcheck" }, -- Added C/C++ linter
			cpp = { "cppcheck" },
			go = { "golangci-lint" }, -- Go linter
			rust = { "rust-analyzer" },
			html = { "tidy" }, -- HTML linter
			css = { "stylelint" }, -- CSS linter
		}

		local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

		-- Lint on multiple events for better coverage
		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
			group = lint_augroup,
			callback = function()
				lint.try_lint()
			end,
		})

		-- Keybinding to trigger linting manually
		vim.keymap.set("n", "<leader>l", function()
			lint.try_lint()
		end, { desc = "Trigger linting for current file" })
	end,
}
