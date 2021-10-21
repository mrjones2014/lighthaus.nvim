local M = {}

function M.apply(colors)
  local set_highlight = require('lighthaus.utils').set_highlight

  set_highlight('NerdTreeClosable', colors.orange2)
  set_highlight('NerdTreeOpenable', colors.green2)

  set_highlight('NerdTreeDir', colors.blue2)
  set_highlight('NerdTreeDirSlash', colors.cyan)

  set_highlight('NerdTreeExecFile', colors.green)
  set_highlight('NerdTreeFile', colors.white)

  set_highlight('NerdTreeHelp', colors.white2)
  set_highlight('NerdTreeUp', colors.orange)

  set_highlight('NerdTreeFlags', colors.cyan2)
end

return M
