local telescope = {
	"nvim-telescope/telescope.nvim",
	event = "VimEnter",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
			cond = function()
				return vim.fn.executable("make") == 1
			end,
		},
		{ "nvim-telescope/telescope-ui-select.nvim" },
		{ "nvim-tree/nvim-web-devicons" },
	},
	config = function()
		require("telescope").setup({
			extensions = {
				["ui-select"] = {
					require("telescope.themes").get_dropdown(),
				},
			},
		})

		pcall(require("telescope").load_extension, "fzf")
		pcall(require("telescope").load_extension, "ui-select")

		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "[S]earch [H]elp" })
		vim.keymap.set("n", "<leader>sk", builtin.keymaps, { desc = "[S]earch [K]eymaps" })
		vim.keymap.set("n", "<leader>ss", builtin.builtin, { desc = "[S]earch [S]elect Telescope" })
		vim.keymap.set("n", "<leader>sd", builtin.diagnostics, { desc = "[S]earch [D]iagnostics" })
		vim.keymap.set("n", "<leader>sr", builtin.resume, { desc = "[S]earch [R]esume" })
		vim.keymap.set("n", "<leader>fo", builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })

		-- Find files
		vim.keymap.set("n", "<leader>ff", function()
			builtin.find_files(require("telescope.themes").get_dropdown({
				winblend = 5,
				previewer = true,
			}))
		end, { desc = "[f] find files" })

		-- Search in current buffer
		vim.keymap.set("n", "<leader>fh", function()
			builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
				winblend = 5,
				previewer = false,
			}))
		end, { desc = "[h] search in current buffer" })

		-- Grep in files
		vim.keymap.set("n", "<leader>fg", function()
			builtin.live_grep(require("telescope.themes").get_dropdown({
				winblend = 5,
				previewer = true,
			}))
		end, { desc = "[G]rep in Files" })

		-- Find previously opened buffers
		vim.keymap.set("n", "<leader><leader>", function()
			builtin.buffers(require("telescope.themes").get_dropdown({
				winblend = 5,
				previewer = true,
			}))
		end, { desc = "[F]ind [B]uffers" })

		-- Search in neovim config
		vim.keymap.set("n", "<leader>sn", function()
			builtin.find_files({ cwd = vim.fn.stdpath("config") })
		end, { desc = "[S]earch [N]eovim files" })
	end,
}

return telescope
