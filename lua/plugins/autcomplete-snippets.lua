return {
    -- Snippets
    {
        'l3mon4d3/luasnip',
        version = '2.*',
        opts = {},
    },
    {
        'rafamadriz/friendly-snippets',
        config = function() require('luasnip.loaders.from_vscode').lazy_load() end,
    },

    -- Autocompletion

    {
        'saghen/blink.cmp',
        dependencies = {
            'l3mon4d3/luasnip',
            'saghen/blink.lib',
        },
        opts = {
            keymap = { preset = 'enter' },
            -- 'default' (recommended) for mappings similar to built-in completions
            --   <c-y> to accept ([y]es) the completion.
            --    this will auto-import if your lsp supports it.
            --    this will expand snippets if the lsp sent a snippet.
            -- 'super-tab' for tab to accept
            -- 'enter' for enter to accept
            -- 'none' for no mappings
            --
            -- for an understanding of why the 'default' preset is recommended,
            -- you will need to read `:help ins-completion`
            --
            -- no, but seriously. please read `:help ins-completion`, it is really good!
            --
            -- all presets have the following mappings:
            -- <tab>/<s-tab>: move to right/left of your snippet expansion
            -- <c-space>: open menu or open docs if already open
            -- <c-n>/<c-p> or <up>/<down>: select next/previous item
            -- <c-e>: hide menu
            -- <c-k>: toggle signature help
            --
            -- see `:help blink-cmp-config-keymap` for defining your own keymap
            appearance = { nerd_font_variant = 'mono' },
            -- 'mono' (default) for 'nerd font mono' or 'normal' for 'nerd font'
            -- adjusts spacing to ensure icons are aligned
            completion = {
                -- by default, you may press `<c-space>` to show the documentation.
                -- optionally, set `auto_show = true` to show the documentation after a delay.
                documentation = { auto_show = true, auto_show_delay_ms = 500 },
            },
            sources = {
                default = { 'lsp', 'path', 'snippets' },
            },
            snippets = { preset = 'luasnip' },
            -- blink.cmp includes an optional, recommended rust fuzzy matcher,
            -- which automatically downloads a prebuilt binary when enabled.
            --
            -- by default, we use the lua implementation instead, but you may enable
            -- the rust implementation via `'prefer_rust_with_warning'`
            --
            -- see `:help blink-cmp-config-fuzzy` for more information
            fuzzy = { implementation = 'lua' },
            -- shows a signature help window while you type arguments for a function
            signature = { enabled = true },
        },
    },
}
