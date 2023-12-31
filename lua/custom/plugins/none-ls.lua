return {
	'nvimtools/none-ls.nvim',
	config = function()
		local null_ls = require 'null-ls'

		null_ls.setup {
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.diagnostics.eslint_d,
				null_ls.builtins.formatting.prettierd,
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.goimports,
				null_ls.builtins.formatting.golines,
			},
		}

		vim.keymap.set('n', '<leader>cf', vim.lsp.buf.format, { desc = '[C]ode [F]ormat' })
	end,
}
