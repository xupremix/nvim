local treesitter = {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		"windwp/nvim-autopairs",
		"windwp/nvim-ts-autotag",
	},
	build = ":TSUpdate",
	event = "BufReadPost",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = { "bash", "c", "rust", "cpp", "python", "lua", "markdown", "vim", "vimdoc" },
			auto_install = true,
			highlight = { enable = true },
			indent = { enable = true },
			sync_install = false,
			autopairs = {
				enable = true,
			},
			autotag = {
				enable = true,
			},
		})
	end,
}

return treesitter
