local neogen = {
	"danymat/neogen",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"L3MON4D3/LuaSnip",
	},
	opts = {
		enabled = true,
		snippet_engine = "luasnip",
	},
}

neogen.keys = {
	{
		"<leader>nf",
		'<cmd>lua require("neogen").generate({ type = "func" })<CR>',
		desc = "Generate function docs",
	},
	{
		"<leader>ns",
		'<cmd>lua require("neogen").generate({ type = "class" })<CR>',
		desc = "Generate struct docs",
	},
	{
		"<leader>nt",
		'<cmd>lua require("neogen").generate({ type = "type" })<CR>',
		desc = "Generate type docs",
	},
	{
		"<leader>nv",
		'<cmd>lua require("neogen").generate({ type = "file" })<CR>',
		desc = "Generate file docs",
	},
}

function neogen.config()
	require("neogen").setup({
		languages = {
			["c.doxygen"] = require("neogen.configurations.c"),
			["cpp.doxygen"] = require("neogen.configurations.cpp"),
			["rust.rustdoc"] = require("neogen.configurations.rust"),
			["python.google_docstrings"] = require("neogen.configurations.python"),
		},
	})
end

return neogen
