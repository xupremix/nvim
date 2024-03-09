local blankline = {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	opts = {},
}

function blankline.config()
	local highlight = {
		"Blue",
	}

	local hooks = require("ibl.hooks")
	hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
		vim.api.nvim_set_hl(0, "Blue", { fg = "#61BFEF" })
	end)

	vim.g.rainbow_delimiters = { highlight = highlight }
	require("ibl").setup({ scope = { highlight = highlight } })
end

return blankline
