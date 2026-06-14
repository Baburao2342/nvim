require 'config.keymaps'
require 'config.options'
require 'config.lazy'

-- ============================================================
-- section 10: optional examples / next steps
-- kickstart.plugins.* examples
-- ============================================================
do
  -- the following comments only work if you have downloaded the kickstart repo, not just copy pasted the
  -- init.lua. if you want these files, they are in the repository, so you can just download them and
  -- place them in the correct locations.

  -- note: next step on your neovim journey: add/configure additional plugins for kickstart
  --
  --  here are some example plugins that i've included in the kickstart repository.
  --  uncomment any of the lines below to enable them (you will need to restart nvim).
  --
  -- require 'kickstart.plugins.debug'
  -- require 'kickstart.plugins.indent_line'
  -- require 'kickstart.plugins.lint'
  -- require 'kickstart.plugins.autopairs'
  -- require 'kickstart.plugins.neo-tree'
  -- require 'kickstart.plugins.gitsigns' -- adds gitsigns recommended keymaps

  -- note: you can add your own plugins, configuration, etc from `lua/custom/plugins/*.lua`
  --
  --  uncomment the following line and add your plugins to `lua/custom/plugins/*.lua` to get going.
  -- require 'custom.plugins'
end

-- the line beneath this is called `modeline`. see `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
