return {
  {
    "xiyaowong/transparent.nvim",
    opts = {},
  },
  {
    "folke/tokyonight.nvim",
    config = function()
      require("tokyonight").setup({
        transparent = true, -- Enable this to disable the background color
        styles = {
          sidebars = "transparent", -- Set sidebar background to transparent (e.g., nvim-tree)
          floats = "transparent", -- Set floating windows to transparent
        },
      })
      vim.cmd.colorscheme("tokyonight")
    end,
  },
}
