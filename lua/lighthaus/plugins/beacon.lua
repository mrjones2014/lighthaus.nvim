local M = {}

function M.apply()
  local colors = require('lighthaus.colors')
  require('lighthaus.utils').set_highlight('Beacon', colors.grey)
end

return M
