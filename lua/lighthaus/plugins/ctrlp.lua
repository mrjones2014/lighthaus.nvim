local M = {}

function M.apply(colors)
  local set_highlight = require('lighthaus.utils').set_highlight

  set_highlight('CtrlPMatch', colors.cyan2)
end

return M
