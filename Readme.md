## Neovim dotfiles with LazyVim starter 

This is my `main` branch, which contains my LazyVim config. I am currently daily-driving this right here because maintaining your own config from scratch is a bit of a pain.... 

To clone just this branch: 
```bash 
git clone https://github.com/Natzukashi/nvim --single-branch -b main --depth=1
```

### Why this instead of manually writing your own config? 
This is nicer as it has loads of better settings, tweaks and defaults.
- My code block above doesn't show the triple ` in neovim, which is a nice feature my default setup doesn't have.
- Lualine shows time instead of row:column which is better as nobody uses the latter anyways. (It is still there btw.)
- Tabs setup. Fucking beautiful.
- Easily install plugins as my manual config taught me how Lazy works. (Yeah not interested in vim.pack nonsense).
- Cool LSP.

A few more I can't find right now.

So yeah this will probably be my daily driver. I used to care about *unused plugins* because they are "bloat" as I don't use them, but just like VS Code and Zed it actually makes sense. 

Hope you like neovim just as much as I do!
