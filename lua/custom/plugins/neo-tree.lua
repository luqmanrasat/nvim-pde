return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	opts = {
		filesystem = { hijack_netrw_behavior = "open_current" }
	},
	config = function(_, opts)
		require("neo-tree").setup(opts)

		vim.keymap.set("n", "<leader>ee", ":Neotree focus<CR>", { desc = "file [E]xplorer show/focus" })
		vim.keymap.set("n", "<leader>eq", ":Neotree close<CR>", { desc = "file [E]xplorer [C]lose" })
	end
}
