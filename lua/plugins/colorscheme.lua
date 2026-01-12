return {
    -- {  
    --     "rebelot/kanagawa.nvim",
    --     name = "kanagawa",
    --     config = function()
    --         vim.cmd("colorscheme kanagawa")
    --     end
    -- },
    -- {
    --     "rose-pine/neovim",
    --     name = "rose-pine",
    --     config = function()
    --         vim.cmd("colorscheme rose-pine")
    --     end
    -- },
    {
        "sainnhe/everforest",
        name = "everforest",
        config = function ()
            vim.o.background = 'dark' 
            vim.g.everforest_background = "hard"
            vim.cmd("colorscheme everforest")
            vim.g.everforest_enable_italic = 1
        end
    }
}
