return {
  {
    "stevearc/oil.nvim",
    opts = {
      keymaps = {
        ["g."] = { "actions.toggle_hidden", mode = "n" },
      },
    },
    dependencies = { "nvim-mini/mini.icons" },
    lazy = false,
  },
}
