vim.opt.clipboard = "unnamedplus"
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

vim.opt.inccommand = 'split'    -- live preview of substitute commands

-- Highlight yanked text (Cannot understand the code but group = ... essentially makes a group and puts it inside that so reloading conifg 100x doesnt reload the command (ig))
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

vim.opt.wrap = false
vim.opt.termguicolors = true


vim.opt.runtimepath:prepend(vim.fn.stdpath('data') .. '/site')
vim.opt.autowriteall = true  -- Auto-save before :next, :make, etc.
