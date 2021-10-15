local M = {}

function M.apply()
  local colors = require('lighthaus.colors')
  local set_highlight = require('lighthaus.utils').set_highlight

  set_highlight('StartifyBracket', colors.grey)
  set_highlight('StartifyFile', colors.green2)
  set_highlight('StartifyFooter', colors.grey)
  set_highlight('StartifyHeader', colors.cyan2)
  set_highlight('StartifyNumber', colors.purple)
  set_highlight('StartifyPath', colors.white2, colors.active_bg)
  set_highlight('StartifySection', colors.blue2)
  set_highlight('StartifySelect', colors.active_bg, colors.hl_yellow)
  set_highlight('StartifySlash', colors.white2)
  set_highlight('StartifySpecial', colors.hl_orange)
end

return M
