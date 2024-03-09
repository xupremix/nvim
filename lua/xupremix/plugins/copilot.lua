local copilot = {
	"zbirenbaum/copilot.lua",
	cmd = "Copilot",
	event = "InsertEnter",
	config = function()
		vim.keymap.set("n", "<leader>cd", "<cmd>Copilot disable<cr>")
		vim.keymap.set("n", "<leader>ce", "<cmd>Copilot enable<cr>")
		require("copilot").setup({
			suggestion = {
				auto_trigger = true,
				keymap = {
					accept = "<Tab>",
					dismiss = "<C-i>",
				},
			},
		})
	end,
}

return copilot
