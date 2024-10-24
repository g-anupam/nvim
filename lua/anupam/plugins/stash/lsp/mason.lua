return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")

		-- Mason UI setup with icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		-- Configure LSP servers for your preferred languages
		mason_lspconfig.setup({
			ensure_installed = {
				"pyright", -- Python
				--"clangd", -- C/C++
				"gopls", -- Go
				"rust_analyzer", -- Rust
				"html", -- HTML
				"cssls", -- CSS
				"ts_ls", -- JavaScript/TypeScript (use tsserver instead of ts_ls)
				"lua_ls", -- Lua
			},
		})

		-- Specify the path for clangd to avoid conflicts
		--require("lspconfig").clangd.setup({
		--cmd = {
		--"/opt/homebrew/opt/llvm/bin/clangd",
		--"--compile-commands=/path/to/your/project/compile_commands.json",
		--},
		--root_dir = require("lspconfig").util.root_pattern("compile_commands.json", ".git"),
		-- Additional configurations can go here
		--})

		-- Install necessary tools for formatting and linting
		mason_tool_installer.setup({
			ensure_installed = {
				"black", -- Python formatter
				"isort", -- Python formatter
				"pylint", -- Python linter
				--"clang-format", -- C/C++ formatter
				"eslint_d", -- JS linter
				"stylua", -- Lua formatter
				"gofumpt", -- Go formatter
				"rustfmt", -- Rust formatter
			},
		})
	end,
}
