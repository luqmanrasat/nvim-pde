return {
	'nvim-neo-tree/neo-tree.nvim',
	branch = 'v3.x',
	dependencies = {
		'nvim-lua/plenary.nvim',
		'nvim-tree/nvim-web-devicons',
		'MunifTanjim/nui.nvim',
	},
	opts = {
		filesystem = { hijack_netrw_behavior = 'open_current' }
	},
	config = function()
		require('which-key').register {
			['<leader>e'] = { name = 'File [E]xplorer', _ = 'which_key_ignore' },
		}

		vim.keymap.set('n', '<leader>ee', ':Neotree focus<CR>', { desc = 'File [E]xplorer show/focus' })
		vim.keymap.set('n', '<leader>eq', ':Neotree close<CR>', { desc = 'File [E]xplorer [C]lose' })
	end
}
