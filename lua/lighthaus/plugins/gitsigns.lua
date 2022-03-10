local M = {}

function M.apply(colors)
  local set_highlight = require('lighthaus.utils').set_highlight

  if vim.o.cursorline then
    set_highlight('GitSignsCurrentLineBlame', colors.white2)
  else
    set_highlight('GitSignsCurrentLineBlame', colors.non_text)
  end

  set_highlight('GitSignsAdd', colors.green)
  set_highlight('GitSignsAddLn', colors.green)
  set_highlight('GitSignsAddInline', colors.green)
  set_highlight('GitSignsChange', colors.yellow)
  set_highlight('GitSignsChangeLn', colors.yellow)
  set_highlight('GitSignsChangeInline', colors.yellow)
  set_highlight('GitSignsDelete', colors.red2)
  set_highlight('GitSignsDeleteLn', colors.red2)
  set_highlight('GitSignsDeleteInline', colors.red2)
end

return M
