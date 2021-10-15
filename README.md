# lighthaus.nvim

A Lua implementation of [lighthaus-theme/vim-lighthaus](https://github.com/lighthaus-theme/vim-lighthaus), with added built-in LSP support!

Default:

![normal](./assets/default.png)

Dark:

![dark](./assets/dark.png)

**NOTE:** Requires `termguicolors`.

## Config

Running `:colorscheme lighthaus` will set the theme with the default background. Otherwise, see configuration below.

```lua
require('lighthaus').setup({
  -- set true to use dark bg by default
  bg_dark = false,
  -- see colors.lua to see colors table, set overrides here to be merged with defaults
  colors = {},
})
```

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

## Other Plugin Support

- [ale](https://github.com/dense-analysis/ale)
- [beacon](https://github.com/DanilaMihailov/beacon.nvim)
- [coc](https://github.com/neoclide/coc.nvim)
- [fzf](https://github.com/junegunn/fzf)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [vim-fugitive](https://github.com/tpope/vim-fugitive)
- [vim-gitgutter](https://github.com/airblade/vim-gitgutter)
- [vim-indent-guides](https://github.com/nathanaelkane/vim-indent-guides)
- [vim-plug](https://github.com/junegunn/vim-plug)
- [vim-signature](https://github.com/kshenoy/vim-signature)
- [vim-signify](https://github.com/mhinz/vim-signify)
- [vim-startify](https://github.com/mhinz/vim-startify)
- [vimtex](https://github.com/lervag/vimtex)
- [vimwiki](https://github.com/vimwiki/vimwiki)

## Terminal Themes

A theme for Kitty can be found in `extra/`. Feel free to submit a PR to add a theme for your favorite terminal.
