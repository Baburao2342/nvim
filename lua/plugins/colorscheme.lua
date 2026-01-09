return {
    {  
        "rebelot/kanagawa.nvim",
        name = "kanagawa",
        config = function()
            vim.cmd("colorscheme kanagawa")
        end
    },
    {
        {
            "xero/miasma.nvim",
            lazy = false,
            priority = 1000,
            config = function()
                -- vim.cmd("colorscheme miasma")
            end,
        }
    },
}
