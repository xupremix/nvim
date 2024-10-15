local hologram = {
	"edluffy/hologram.nvim",
	event = "VeryLazy",
	config = function()
		require("hologram").setup({
			auto_display = true,
		})
	end,
}

return hologram
