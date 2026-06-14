return {
  {
    'rebelot/kanagawa.nvim',
    priority = 1000,
    ---@diagnostic disable-next-line: missing-fields
    config = function()
      require('kanagawa').setup {
        styles = {
          comments = { italic = true },
        },
      }
      vim.cmd.colorscheme 'kanagawa'
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
