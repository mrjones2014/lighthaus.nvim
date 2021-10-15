local M = {}

function M.apply()
  local colors = require('lighthaus.colors')
  local set_highlight = require('lighthaus.utils').set_highlight

  set_highlight('SignatureMarkText', colors.hl_orange)
end

return M
