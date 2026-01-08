return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
    },
    lazy = false, -- neo-tree will lazily load itself
    opts = {
        close_if_last_window = false, -- Close Neo-tree if it is the last window left in the tab
        popup_border_style = "", -- or "" to use 'winborder' on Neovim v0.11+
        clipboard = {
            sync = "none", -- or "global"/"universal" to share a clipboard for each/all Neovim instance(s), respectively
        },
    }
}
