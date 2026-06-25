return {
    {
        'stevearc/oil.nvim',
        ---@module 'oil'
        ---@type oil.SetupOpts
        opts = {

            vim.keymap.set('n', '<leader>rr', ':RunCode<CR>', { noremap = true, silent = false }),
            vim.keymap.set('n', '<leader>rf', ':RunFile<CR>', { noremap = true, silent = false }),
            vim.keymap.set('n', '<leader>rft', ':RunFile tab<CR>', { noremap = true, silent = false }),
            vim.keymap.set('n', '<leader>rp', ':RunProject<CR>', { noremap = true, silent = false }),
            vim.keymap.set('n', '<leader>rc', ':RunClose<CR>', { noremap = true, silent = false }),
            vim.keymap.set('n', '<leader>crf', ':CRFiletype<CR>', { noremap = true, silent = false }),
            vim.keymap.set('n', '<leader>crp', ':CRProjects<CR>', { noremap = true, silent = false }),
        },
        -- Optional dependencies
        dependencies = { 'nvim-tree/nvim-web-devicons' }, -- use if you prefer nvim-web-devicons
        -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
        lazy = false,
    },
}
