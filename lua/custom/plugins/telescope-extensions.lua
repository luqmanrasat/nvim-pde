return {
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({})
					}
				}
			})
			require("telescope").load_extension("ui-select")
		end
	},
	{
		"debugloop/telescope-undo.nvim",
		keys = {
			{
				"<leader>u",
				"<cmd>Telescope undo<cr>",
				desc = "Undo history",
			},
		},
		config = function()
			require("telescope").load_extension("undo")
		end
	},
}
