return {
    {
        'folke/todo-comments.nvim',
        opts = { signs = 'true' },
    },
    {
        'windwp/nvim-autopairs',
        event = 'InsertEnter',
        config = true,
        -- use opts = {} for passing setup options
        -- this is equivalent to setup({}) function
    },
    {
        'rcarriga/nvim-notify',
        config = function()
            require('notify').setup {
                background_colour = '#000000',
            }
            vim.notify = require 'notify'
        end,
    },
}
