local mini = {
	"echasnovski/mini.nvim",
	config = function()
		--  - va)  - [V]isually select [A]round [)]paren
		--  - yinq - [Y]ank [I]nside [N]ext [']quote
		--  - ci'  - [C]hange [I]nside [']quote
		require("mini.ai").setup({ n_lines = 500 })
		-- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
		-- - sd'   - [S]urround [D]elete [']quotes
		-- - sr)'  - [S]urround [R]eplace [)] [']
		require("mini.surround").setup()
		local statusline = require("mini.statusline")
		statusline.setup()
		statusline.section_location = function()
			return ""
		end
		--  Check out: https://github.com/echasnovski/mini.nvim
	end,
}

return mini
