local signature = {
	"ray-x/lsp_signature.nvim",
	event = "VeryLazy",
	opts = {
		hint_enable = false,
		transparency = 0,
		toggle_key = "<A-t>",
		bind = true,
		handler_opts = {
			border = "none",
		},
	},
	config = function(_, opts)
		require("lsp_signature").setup(opts)
	end,
}

return signature
