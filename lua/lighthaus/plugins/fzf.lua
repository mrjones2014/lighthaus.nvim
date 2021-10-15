local M = {}

function M.apply()
  local colors = require('lighthaus.colors')
  local formats = require('lighthaus.formats')
  local set_highlight = require('lighthaus.utils').set_highlight

  set_highlight('FZF_fg', colors.white)
  set_highlight('FZF_bg', colors.black)
  set_highlight('FZF_hl', colors.hl_yellow)

  set_highlight('FZF_fg2', colors.fg_alt, formats.bold)
  set_highlight('FZF_hl2', colors.orange2, formats.bold)

  set_highlight('FZF_info', colors.purple2)
  set_highlight('FZF_border', colors.blue)

  set_highlight('FZF_prompt', colors.green2)
  set_highlight('FZF_pointer', colors.hl_yellow, formats.bold)
  set_highlight('FZF_marker', colors.red)
  set_highlight('FZF_spinner', colors.cyan2)
  set_highlight('FZF_header', colors.blue)
end

return M
