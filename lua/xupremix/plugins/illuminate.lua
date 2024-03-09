local illuminate = {
	"RRethy/vim-illuminate",
	event = "BufReadPost",
}

function illuminate.config()
	require("illuminate").configure({
		filetypes_denylist = {
			"NvimTree",
			"Telescope",
			"Harpoon",
			"gitcommit",
		},
	})
end

return illuminate
