return {
    -- {
    --     'sainnhe/gruvbox-material',
    --     lazy = false,
    --     priority = 1000,
    --     config = function()
    --         -- Optionally configure and load the colorscheme
    --         -- directly inside the plugin declaration.
    --         vim.g.gruvbox_material_enable_italic = true
    --         vim.g.gruvbox_material_enable_bold = true
    --         vim.g.gruvbox_material_transparent_background = 2
    --         vim.g.gruvbox_material_foreground = 'mix'
    --         vim.cmd.colorscheme 'gruvbox-material'
    --     end,
    -- },
    {
        'rose-pine/neovim',
        name = 'rose-pine',
        config = function()
            require('rose-pine').setup {
                styles = {
                    transparency = true,
                },
            }
            vim.cmd.colorscheme 'rose-pine'
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
