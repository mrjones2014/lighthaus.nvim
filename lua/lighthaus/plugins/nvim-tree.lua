local M = {}

function M.apply()
  local colors = require('lighthaus.colors')
  local set_highlight = require('lighthaus.utils').set_highlight

  set_highlight('NvimTreeFolderName', colors.fg, colors.active_bg)
  set_highlight('NvimTreeOpenedFolderName', colors.fg, colors.active_bg)
  set_highlight('NvimTreeEmptyFolderName', colors.fg, colors.active_bg)
  set_highlight('NvimTreeGitNew', colors.green, colors.active_bg)
  set_highlight('NvimTreeGitDirty', colors.blue, colors.active_bg)
  set_highlight('NvimTreeEndOfBuffer', colors.active_bg, colors.active_bg)
end

return M
