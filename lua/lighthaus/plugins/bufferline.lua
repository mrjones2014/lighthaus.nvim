local M = {}

function M.apply()
  local colors = require('lighthaus.colors')
  local set_highlight = require('lighthaus.utils').set_highlight

  -- BufferLine initializes its highlights based on these highlight groups
  set_highlight('TabLineSel', colors.blue2)
  set_highlight('WildMenu', colors.blue2)
end

return M
