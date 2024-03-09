local color = {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
}

function color.config()
	vim.cmd.colorscheme("tokyonight-storm")
	vim.cmd.hi("Comment gui=none")
	require("tokyonight").setup({
		transparent = true,
		style = "storm",
		terminal_colors = true,
	})
end

return color
