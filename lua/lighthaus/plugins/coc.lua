local M = {}

function M.apply(colors)
  local set_highlight = require('lighthaus.utils').set_highlight

  set_highlight('CocInfoHighlight', colors.purple2)
  set_highlight('CocErrorHighlight', colors.red2)
  set_highlight('CocWarningHighlight', colors.orange2)

  set_highlight('CocErrorSign', colors.red)
  set_highlight('CocHintSign', colors.fg_alt)
  set_highlight('CocInfoSign', colors.purple)
  set_highlight('CocWarningSign', colors.orange)

  set_highlight('CocGitAddedSign', colors.green)
  set_highlight('CocGitChangedSign', colors.hl_yellow)
  set_highlight('CocGitChangeRemovedSign', colors.red)
  set_highlight('CocGitRemovedSign', colors.red)
end

return M
