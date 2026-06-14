return {
	'folke/which-key.nvim',
	opts = {
		delay = 0,
		icons = { mappings = vim.g.have_nerd_fonts },
		spec = {
			{ '<leader>s', group = '[s]earch', mode = { 'n', 'v' } },
			{ '<leader>t', group = '[t]oggle' },
			{ '<leader>h', group = 'git [h]unk', mode = { 'n', 'v' } },
			{ 'gr', group = 'lsp actions', mode = { 'n' } },
		}
	},
}
