local M = {}

function M.apply()
  local colors = require('lighthaus.colors')
  local set_highlight = require('lighthaus.utils').set_highlight

  set_highlight('plugInstall', colors.green)
  set_highlight('plugClean', colors.blue)
  set_highlight('plugDeleted', colors.red)
end

return M
