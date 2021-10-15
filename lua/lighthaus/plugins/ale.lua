local M = {}

function M.apply()
  local colors = require('lighthaus.colors')
  local set_highlight = require('lighthaus.utils').set_highlight

  set_highlight('AleError', colors.red)
  set_highlight('AleErrorSign', colors.red2)

  set_highlight('AleInfo', colors.purple)
  set_highlight('AleInfoSign', colors.purple2)

  set_highlight('AleWarning', colors.orange)
  set_highlight('AleWarningSign', colors.orange2)
end

return M
