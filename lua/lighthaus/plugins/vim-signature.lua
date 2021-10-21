local M = {}

function M.apply(colors)
  local set_highlight = require('lighthaus.utils').set_highlight

  set_highlight('SignatureMarkText', colors.hl_orange)
end

return M
