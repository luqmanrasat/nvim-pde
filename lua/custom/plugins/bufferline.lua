return {
	'akinsho/bufferline.nvim',
	version = '*',
	dependencies = 'nvim-tree/nvim-web-devicons',
	opts = {
		options = {
			offsets = {
				{
					filetype = 'neo-tree',
					text = 'File Explorer',
					text_align = 'left',
					separator = true
				}
			},
		}
	},
	config = function(_, opts)
		require('bufferline').setup(opts)

		require('which-key').register {
			['<leader>b'] = { name = '[B]uffer', _ = 'which_key_ignore' },
		}

		vim.keymap.set('n', '<S-l>', ':BufferLineCycleNext<CR>', { desc = 'Cycle next buffer' })
		vim.keymap.set('n', '<S-h>', ':BufferLineCyclePrev<CR>', { desc = 'Cycle previous buffer' })

		vim.keymap.set('n', '<leader>bh', ':BufferLineMovePrev<CR>', { desc = 'Move to previous buffer' })
		vim.keymap.set('n', '<leader>bl', ':BufferLineMoveNext<CR>', { desc = 'Move to next buffer' })
		vim.keymap.set('n', '<leader>bH', ':BufferLineCloseLeft<CR>', { desc = 'Close buffers on the left' })
		vim.keymap.set('n', '<leader>bL', ':BufferLineCloseRight<CR>', { desc = 'Close buffers on the right' })
		vim.keymap.set('n', '<leader>bs', ':BufferLinePick<CR>', { desc = '[B]uffer [S]elect' })
		vim.keymap.set('n', '<leader>bd', ':BufferLinePickClose<CR>', { desc = '[B]uffer select then [D]elete' })
		vim.keymap.set('n', '<leader>bD', ':BufferLineCloseOthers<CR>', { desc = '[B]uffer [D]elete all except current' })
		vim.keymap.set('n', '<leader>b1', ':BufferLineGoToBuffer 1<CR>', { desc = 'Go to [B]uffer [1]' })
		vim.keymap.set('n', '<leader>b2', ':BufferLineGoToBuffer 2<CR>', { desc = 'Go to [B]uffer [2]' })
		vim.keymap.set('n', '<leader>b3', ':BufferLineGoToBuffer 3<CR>', { desc = 'Go to [B]uffer [3]' })
		vim.keymap.set('n', '<leader>b4', ':BufferLineGoToBuffer 4<CR>', { desc = 'Go to [B]uffer [4]' })
	end
}
