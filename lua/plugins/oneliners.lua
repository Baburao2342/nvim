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
}
