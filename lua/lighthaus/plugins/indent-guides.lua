local M = {}

function M.apply(colors)
  local set_highlight = require('lighthaus.utils').set_highlight

  set_highlight('IndentGuidesEven', colors.white)
  set_highlight('IndentGuidesOdd', colors.white2)
end

return M
