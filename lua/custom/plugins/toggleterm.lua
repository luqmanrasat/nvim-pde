return {
	{
		'akinsho/toggleterm.nvim',
		version = '*',
		opts = {},
		config = function(_, opts)
			require('toggleterm').setup(opts)

			vim.keymap.set('n', '<leader>tt', ':ToggleTerm<CR>', { desc = '[T]oggle [T]erminal' })
		end
	}
}
