return {
	'craftzdog/solarized-osaka.nvim',
	lazy = false,
	priority = 1000,
	opts = {
		styles = {
			comments = { italic = true },
			keywords = { italic = true },
			functions = { bold = true },
			variables = { bold = true },
		},
	},
	config = function(_, opts)
		require('solarized-osaka').setup(opts)
		vim.cmd.colorscheme 'solarized-osaka'
	end
}
