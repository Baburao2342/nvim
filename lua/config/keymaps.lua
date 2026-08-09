-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<C-r>", "<cmd>restart<CR>")
vim.keymap.set("n", "<leader>e", function()
  require("oil").toggle_float()
end, { desc = "Toggle Oil float" })
