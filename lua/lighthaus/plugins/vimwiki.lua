local M = {}

function M.apply(colors)
  local formats = require('lighthaus.formats')
  local set_highlight = require('lighthaus.utils').set_highlight

  set_highlight('VimwikiHeader1', colors.hl_yellow, formats.bold)
  set_highlight('VimwikiHeader2', colors.green, formats.bold)
  set_highlight('VimwikiHeader3', colors.orange2, formats.bold)
  set_highlight('VimwikiHeader4', colors.purple, formats.bold)
  set_highlight('VimwikiHeader5', colors.cyan, formats.bold)
  set_highlight('VimwikiHeader6', colors.white, formats.bold)
end

return M
