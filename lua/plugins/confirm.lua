return {
  'stevearc/conform.nvim',
  config = function()
    require('conform').setup {
      notify_on_error = false,
      format_on_save = { timeout_ms = 500 },
      default_format_opts = {
        lsp_format = 'fallback', -- use external formatters if configured below, otherwise use lsp formatting. set to `false` to disable lsp formatting entirely.
      },
      -- you can also specify external formatters in here.
      formatters_by_ft = {
        lua = { 'stylua' },
        c = { 'clang-format' },
        python = { 'black' },
      },
    }
end
}
