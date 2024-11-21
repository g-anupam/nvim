-- This is for automcompleting tags in html and can be used for some other languages.
return {
	"mattn/emmet-vim",
	config = function()
		-- Set the leader key for Emmet
		vim.g.user_emmet_leader_key = "<C-Z>"

		-- Enable Emmet only for specific filetypes
		vim.g.user_emmet_install_global = 0
		vim.cmd([[autocmd FileType html,css,jsx,tsx EmmetInstall]])
	end,
}
