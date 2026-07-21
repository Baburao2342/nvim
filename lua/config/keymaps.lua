print 'KEYMAPS LOADED'
vim.keymap.set('n', '<esc>', '<cmd>nohlsearch<cr>')

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set('n', '<leader>e', function() require('oil').toggle_float() end, { desc = 'Toggle Oil float' })

-- Restart neovim
vim.keymap.set('n', '<C-r>', '<cmd>:restart<cr>')

-- diagnostic config & keymaps
--  see `:help vim.diagnostic.opts`
vim.diagnostic.config {
    update_in_insert = false,
    severity_sort = true,
    float = { border = 'rounded', source = 'if_many' },
    underline = { severity = { min = vim.diagnostic.severity.warn } },

    -- can switch between these as you prefer
    virtual_text = true, -- text shows up at the end of the line
    virtual_lines = false, -- text shows up underneath the line, with virtual lines

    -- auto open the float, so you can easily read the errors when jumping with `[d` and `]d`
    jump = {
        on_jump = function(_, bufnr)
            vim.diagnostic.open_float {
                bufnr = bufnr,
                scope = 'cursor',
                focus = false,
            }
        end,
    },
}

vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'open diagnostic [q]uickfix list' })

vim.keymap.set({ 'n', 'v' }, '<leader>f', function() require('conform').format { async = true } end, { desc = '[f]ormat buffer' })

-- exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. otherwise, you normally need to press <c-\><c-n>, which
-- is not what someone will guess without a bit more experience.
--
-- note: this won't work in all terminal emulators/tmux/etc. try your own mapping
-- or just use <c-\><c-n> to exit terminal mode
vim.keymap.set('t', '<esc><esc>', '<c-\\><c-n>', { desc = 'exit terminal mode' })

-- keybinds to make split navigation easier.
--  use ctrl+<hjkl> to switch between windows
--
--  see `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<c-h>', '<c-w><c-h>', { desc = 'move focus to the left window' })
vim.keymap.set('n', '<c-l>', '<c-w><c-l>', { desc = 'move focus to the right window' })
vim.keymap.set('n', '<c-j>', '<c-w><c-j>', { desc = 'move focus to the lower window' })
vim.keymap.set('n', '<c-k>', '<c-w><c-k>', { desc = 'move focus to the upper window' })

-- note: some terminals have colliding keymaps or are not able to send distinct keycodes
-- vim.keymap.set("n", "<c-s-h>", "<c-w>h", { desc = "move window to the left" })
-- vim.keymap.set("n", "<c-s-l>", "<c-w>l", { desc = "move window to the right" })
-- vim.keymap.set("n", "<c-s-j>", "<c-w>j", { desc = "move window to the lower" })
-- vim.keymap.set("n", "<c-s-k>", "<c-w>k", { desc = "move window to the upper" })

-- [[ basic autocommands ]]
--  see `:help lua-guide-autocommands`

-- highlight when yanking (copying) text
--  try it with `yap` in normal mode
--  see `:help vim.hl.on_yank()`
vim.api.nvim_create_autocmd('textyankpost', {
    desc = 'highlight when yanking (copying) text',
    group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
    callback = function() vim.hl.on_yank() end,
})
