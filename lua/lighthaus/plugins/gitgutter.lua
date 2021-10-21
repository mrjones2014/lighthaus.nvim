local M = {}

function M.apply(colors)
  local set_highlight = require('lighthaus.utils').set_highlight

  set_highlight('GitGutterAdd', colors.green)
  set_highlight('GitGutterDelete', colors.red)
  set_highlight('GitGutterChange', colors.hl_yellow)
  set_highlight('GitGutterChangeDelete', colors.red)
end

return M
