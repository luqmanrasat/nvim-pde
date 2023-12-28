local telescope = require('telescope')

return {
	{
		'nvim-telescope/telescope-ui-select.nvim',
		opts = {
			extensions = {
				['ui-select'] = {
					require('telescope.themes').get_dropdown({})
				}
			}
		},
		config = function(_, opts)
			telescope.setup(opts)
			telescope.load_extension('ui-select')
		end
	},
	{
		'debugloop/telescope-undo.nvim',
		keys = {
			{
				'<leader>u',
				'<cmd>Telescope undo<cr>',
				desc = 'Undo history',
			},
		},
		config = function()
			telescope.load_extension('undo')
		end
	},
}
