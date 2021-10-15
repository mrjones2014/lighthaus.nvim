local M = {}

function M.apply()
  local colors = require('lighthaus.colors')
  local formats = require('lighthaus.formats')
  local set_highlight = require('lighthaus.utils').set_highlight

  set_highlight('texCmd', colors.cyan2)
  set_highlight('texCmdAuthor', colors.fg_alt, formats.bold)
  set_highlight('texCmdClass', colors.hl_yellow)
  set_highlight('texCmdTitle', colors.fg_alt, formats.bold)
  set_highlight('texCmdDef', colors.purple)
  set_highlight('texCmdEnv', colors.purple)
  set_highlight('texCmdPart', colors.purple)
  set_highlight('texDefArgName', colors.orange2)
  set_highlight('texEnvArgName', colors.green2)
  set_highlight('texFileArg', colors.blue2)
  set_highlight('texMathEnvArgName', colors.green2)
end

return M
