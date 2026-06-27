-- enable faster startup by caching compiled lua modules
vim.loader.enable()

-- set to true if you have a nerd font installed and selected in the terminal
vim.g.have_nerd_font = true

vim.o.wrap = false

vim.o.tabstop = 4 -- A TAB character looks like 4 spaces
vim.o.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
vim.o.softtabstop = 4 -- Number of spaces inserted instead of a TAB character
vim.o.shiftwidth = 4 -- Number of spaces inserted when indenting

vim.o.winborder = 'rounded'
vim.o.fillchars = 'eob: ' -- remove the ~ at the end
-- [[ setting options ]]
--  see `:help vim.o`
-- note: you can change these options as you wish!
--  for more options, you can see `:help option-list`

-- make line numbers default
vim.o.number = true
-- you can also add relative line numbers, to help with jumping.
--  experiment for yourself to see if you like it!
vim.o.relativenumber = true

-- enable mouse mode, can be useful for resizing splits for example!
vim.o.mouse = 'a'

-- don't show the mode, since it's already in the status line
vim.o.showmode = false

-- sync clipboard between os and neovim.
--  schedule the setting after `uienter` because it can increase startup-time.
--  remove this option if you want your os clipboard to remain independent.
--  see `:help 'clipboard'`

-- enable break indent
vim.o.breakindent = true

-- enable undo/redo changes even after closing and reopening a file
vim.o.undofile = true
vim.opt.undodir = vim.fn.stdpath 'state' .. '/undo'

-- case-insensitive searching unless \c or one or more capital letters in the search term
vim.o.ignorecase = true
vim.o.smartcase = true

-- keep signcolumn on by default
vim.o.signcolumn = 'yes'

-- decrease update time
vim.o.updatetime = 250

-- decrease mapped sequence wait time
vim.o.timeoutlen = 300

-- configure how new splits should be opened
vim.o.splitright = true
vim.o.splitbelow = true

-- sets how neovim will display certain whitespace characters in the editor.
--  see `:help 'list'`
--  and `:help 'listchars'`
--
--  notice listchars is set using `vim.opt` instead of `vim.o`.
--  it is very similar to `vim.o` but offers an interface for conveniently interacting with tables.
--   see `:help lua-options`
--   and `:help lua-guide-options`
vim.o.list = false
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- preview substitutions live, as you type!
vim.o.inccommand = 'split'

-- show which line your cursor is on
vim.o.cursorline = true

-- minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 8

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
-- see `:help 'confirm'`
vim.o.confirm = true

vim.o.autoread = true
vim.o.clipboard = 'unnamedplus'
