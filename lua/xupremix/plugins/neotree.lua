local neotree = {
	"nvim-neo-tree/neo-tree.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
}

function neotree.config()
	vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
	require("neo-tree").setup({
		filesystem = {
			filtered_items = {
				visible = true,
				hide_dotfiles = false,
				hide_hidden = false,
				never_show = {
					"node_modules",
					".git",
					".cache",
					".DS_Store",
				},
			},
		},
	})
end

function neotree.init()
	vim.keymap.set("n", "<leader>t", "<cmd>Neotree toggle<cr>")
end

return neotree
