local M = {}

function M.setup(options)
  vim.cmd([[
    set background=dark
    highlight clear

    if exists("syntax_on")
      syntax reset
    endif
  ]])

  options = require('lighthaus.config').init(options)

  require('lighthaus.core').apply(options.colors, options)
  require('lighthaus.plugins.cmp').apply(options.colors)
  require('lighthaus.plugins.gitsigns').apply(options.colors)
  require('lighthaus.plugins.nvim-tree').apply(options.colors)
  require('lighthaus.plugins.neo-tree').apply(options.colors)
  require('lighthaus.plugins.beacon').apply(options.colors)
  require('lighthaus.plugins.ctrlp').apply(options.colors)
  require('lighthaus.plugins.fzf').apply(options.colors)
  require('lighthaus.plugins.nerdtree').apply(options.colors)
  require('lighthaus.plugins.treesitter').apply(options.colors)
  require('lighthaus.plugins.ale').apply(options.colors)
  require('lighthaus.plugins.coc').apply(options.colors)
  require('lighthaus.plugins.fugitive').apply(options.colors)
  require('lighthaus.plugins.gitgutter').apply(options.colors)
  require('lighthaus.plugins.indent-guides').apply(options.colors)
  require('lighthaus.plugins.plug').apply(options.colors)
  require('lighthaus.plugins.vim-signature').apply(options.colors)
  require('lighthaus.plugins.signify').apply(options.colors)
  require('lighthaus.plugins.startify').apply(options.colors)
  require('lighthaus.plugins.vimtex').apply(options.colors)
  require('lighthaus.plugins.vimwiki').apply(options.colors)
  require('lighthaus.plugins.telescope').apply(options.colors)
end

return M
