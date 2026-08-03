return {
    {
        'folke/tokyonight.nvim',
        lazy = false,
        priority = 1000,
        config = function() vim.cmd.colorscheme 'tokyonight-night' end,
    },

    {
        'xiyaowong/transparent.nvim',
        opts = {},
    },

    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        opts = {
            options = {
                theme = 'auto',
                section_separators = '',
                component_separators = '',
            },
        },
    },
}
