return {
    {
        'oxfist/night-owl.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            require('night-owl').setup()
            vim.cmd.colorscheme 'night-owl'
        end,
    },

    {
        'xiyaowong/transparent.nvim',
        opts = {},
    },

    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        opts = {
            options = { theme = 'auto' },
        },
    },
}
