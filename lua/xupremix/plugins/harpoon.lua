local harpoon = {
	"theprimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("harpoon"):setup()
	end,
	keys = {
		{
			"<leader>a",
			function()
				require("harpoon"):list():append()
			end,
			desc = "harpoon file",
		},
		{
			"<leader>h",
			function()
				local harpoon = require("harpoon")
				harpoon.ui:toggle_quick_menu(harpoon:list())
			end,
			desc = "harpoon quick menu",
		},
		{
			"<leader>A",
			function()
				require("harpoon"):list():select(1)
			end,
			desc = "harpoon to file 1",
		},
		{
			"<leader>S",
			function()
				require("harpoon"):list():select(2)
			end,
			desc = "harpoon to file 2",
		},
		{
			"<leader>D",
			function()
				require("harpoon"):list():select(3)
			end,
			desc = "harpoon to file 3",
		},
		{
			"<leader>F",
			function()
				require("harpoon"):list():select(4)
			end,
			desc = "harpoon to file 4",
		},
	},
}

return harpoon
