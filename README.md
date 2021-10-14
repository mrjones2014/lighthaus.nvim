# lighthaus.nvim

A Lua implementation of [lighthaus-theme/vim-lighthaus](https://github.com/lighthaus-theme/vim-lighthaus)!

Accepts one option, `bg_dark`, to use a black background instead of the default (#18191E).

Running `:colorscheme lighthaus` will set the theme with the default background. To use the dark background,
you can run `:lua require('lighthaus').setup({ bg_dark = true })`.
