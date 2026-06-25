return {
    { 'j-hui/fidget.nvim', opts = {} },
    { 'neovim/nvim-lspconfig' },
    { 'mason-org/mason.nvim', opts = {} },
    {
        'mason-org/mason-lspconfig.nvim',
        opts = {},
    },
    {
        'whoissethdaniel/mason-tool-installer.nvim',
        opts = {
            ensure_installed = { 'clangd', 'lua_ls', 'stylua', 'pyright' },
        },
    },
}
