local M = {}

function M.setup(options)
  options = options or {}

  vim.cmd([[
    set background=dark
    highlight clear

    if exists("syntax_on")
      syntax reset
    endif
  ]])

  local colors = require('lighthaus.colors')

  if options and options.colors and type(options.colors) then
    colors = require('lighthaus.utils').merge_tables(colors, options.colors)
  end

  if options and options.bg_dark then
    colors.active_bg = colors.bg_dark
  else
    colors.active_bg = colors.bg
  end

  require('lighthaus.core').apply(options)
  require('lighthaus.plugins.gitsigns').apply()
  require('lighthaus.plugins.nvim-tree').apply()
  require('lighthaus.plugins.beacon').apply()
  require('lighthaus.plugins.ctrlp').apply()
  require('lighthaus.plugins.fzf').apply()
  require('lighthaus.plugins.nerdtree').apply()
  require('lighthaus.plugins.treesitter').apply()
  require('lighthaus.plugins.ale').apply()
  require('lighthaus.plugins.coc').apply()
  require('lighthaus.plugins.fugitive').apply()
  require('lighthaus.plugins.gitgutter').apply()
  require('lighthaus.plugins.indent-guides').apply()
  require('lighthaus.plugins.plug').apply()
  require('lighthaus.plugins.vim-signature').apply()
  require('lighthaus.plugins.signify').apply()
  require('lighthaus.plugins.startify').apply()
  require('lighthaus.plugins.vimtex').apply()
  require('lighthaus.plugins.vimwiki').apply()
end

return M
