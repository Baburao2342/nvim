return {
  {
    'folke/tokyonight.nvim',
    priority = 1000,
    ---@diagnostic disable-next-line: missing-fields
    config = function()
      require('tokyonight').setup {
        styles = {
          comments = { italic = true },
        },
      }
      vim.cmd.colorscheme 'tokyonight-night'
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
