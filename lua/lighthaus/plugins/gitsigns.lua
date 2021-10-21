local M = {}

function M.apply(colors)
  local set_highlight = require('lighthaus.utils').set_highlight

  if vim.o.cursorline then
    set_highlight('GitSignsCurrentLineBlame', colors.white2)
  else
    set_highlight('GitSignsCurrentLineBlame', colors.non_text)
  end
end

return M
