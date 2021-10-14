# lighthaus.nvim

A Lua implementation of [lighthaus-theme/vim-lighthaus](https://github.com/lighthaus-theme/vim-lighthaus)!

Accepts one option, `bg_dark`, to use a black background instead of the default (#18191E).

Running `:colorscheme lighthaus` will set the theme with the default background. To use the dark background,
you can run `:lua require('lighthaus').setup({ bg_dark = true })`.

**NOTE:** Requires `termguicolors`.

## Lualine Themes

There's 2 Lualine themes, 'lighthaus', and 'lighthaus_dark'. The 'lighthaus_dark' Lualine looks better when
using `bg_dark = true`. Lualine must be loaded _after_ Lighthaus.

Setup:

```lua
require('lualine').setup({
  options = {
    -- your other options here
    theme = 'lighthaus', -- or theme = 'lighthaus_dark'
  },
  -- your other lualine config here
})
```
