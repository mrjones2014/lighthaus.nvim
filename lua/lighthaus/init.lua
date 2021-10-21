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

  local utils = require('lighthaus.utils')
  local colors = utils.clone_table(require('lighthaus.colors'))
  local dark_bg_colors = require('lighthaus.color-overrides')

  if options and options.colors and type(options.colors) then
    colors = utils.merge_tables(colors, options.colors)
  end

  if options and options.bg_dark then
    colors.bg = dark_bg_colors.bg
    colors.fg = dark_bg_colors.fg
  end

  require('lighthaus.core').apply(colors, options)
  require('lighthaus.plugins.gitsigns').apply(colors)
  require('lighthaus.plugins.nvim-tree').apply(colors)
  require('lighthaus.plugins.beacon').apply(colors)
  require('lighthaus.plugins.ctrlp').apply(colors)
  require('lighthaus.plugins.fzf').apply(colors)
  require('lighthaus.plugins.nerdtree').apply(colors)
  require('lighthaus.plugins.treesitter').apply(colors)
  require('lighthaus.plugins.ale').apply(colors)
  require('lighthaus.plugins.coc').apply(colors)
  require('lighthaus.plugins.fugitive').apply(colors)
  require('lighthaus.plugins.gitgutter').apply(colors)
  require('lighthaus.plugins.indent-guides').apply(colors)
  require('lighthaus.plugins.plug').apply(colors)
  require('lighthaus.plugins.vim-signature').apply(colors)
  require('lighthaus.plugins.signify').apply(colors)
  require('lighthaus.plugins.startify').apply(colors)
  require('lighthaus.plugins.vimtex').apply(colors)
  require('lighthaus.plugins.vimwiki').apply(colors)
  require('lighthaus.plugins.bufferline').apply(colors)
end

return M
