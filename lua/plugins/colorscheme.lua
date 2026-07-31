return {
    {
        'shaunsingh/nord.nvim',
        name = 'nord',
        lazy = false,
        priority = 1000,
        config = function() vim.cmd.colorscheme 'nord' end,
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
