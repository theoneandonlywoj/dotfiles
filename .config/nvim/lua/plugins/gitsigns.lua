return {
	"lewis6991/gitsigns.nvim",
	config = function()
		require("gitsigns").setup({
			signs = {
				add = { text = "┃" },
				change = { text = "┃" },
				delete = { text = "_" },
				topdelete = { text = "‾" },
				changedelete = { text = "~" },
				untracked = { text = "┆" },
			},
			signcolumn = true,
			auto_attach = true,
			attach_to_untracked = false,
			current_line_blame = false,
			update_debounce = 100,
		})
		vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
		vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", {})
	end,
}
