return {
    {
        'folke/tokyonight.nvim',
        name = 'tokyonight',
        config = function()
            require('tokyonight').setup {
                transparent = true,
                styles = {
                    sidebars = 'transparent',
                    floats = 'transparent',
                },
            }
            vim.cmd.colorscheme 'tokyonight-moon'
        end,
    },

    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        opts = {
            options = { theme = 'auto' },
        },
    },
}
