local M = {}

function M.apply(colors)
  require('lighthaus.utils').set_highlight('Beacon', colors.grey)
end

return M
