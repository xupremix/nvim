local whichkey = {
	"folke/which-key.nvim",
	event = "VeryLazy",
	-- opts = {},
	keys = {
		{ "<leader>c", group = "[C]ode" },
		{ "<leader>c_", hidden = true },
		{ "<leader>r", group = "[R]ename" },
		{ "<leader>r_", hidden = true },
		{ "<leader>s", group = "[S]earch" },
		{ "<leader>s_", hidden = true },
		{ "<leader>w", group = "[W]orkspace" },
		{ "<leader>w_", hidden = true },
	},
	-- config = function()
	-- 	require("which-key").setup()
	-- 	require("which-key").register({
	-- 		-- ["<leader>c"] = { name = "[C]ode", _ = "which_key_ignore" },
	-- 		-- ["<leader>r"] = { name = "[R]ename", _ = "which_key_ignore" },
	-- 		-- ["<leader>s"] = { name = "[S]earch", _ = "which_key_ignore" },
	-- 		-- ["<leader>w"] = { name = "[W]orkspace", _ = "which_key_ignore" },
	-- 	})
	-- end,
}

return whichkey
