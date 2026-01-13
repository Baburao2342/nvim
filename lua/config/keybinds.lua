vim.g.mapleader = " "
vim.keymap.set('n', '<leader>e', ":Neotree filesystem toggle<CR>")

vim.keymap.set('n', '<leader>gp', ":Gitsigns preview_hunk<CR>", {})
vim.keymap.set('n', '<leader>gt', ":Gitsigns toggle_current_line_blame<CR>", {})
