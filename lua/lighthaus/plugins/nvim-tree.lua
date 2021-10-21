local M = {}

function M.apply(colors)
  local set_highlight = require('lighthaus.utils').set_highlight

  set_highlight('NvimTreeFolderName', colors.fg, colors.bg)
  set_highlight('NvimTreeOpenedFolderName', colors.fg, colors.bg)
  set_highlight('NvimTreeEmptyFolderName', colors.fg, colors.bg)
  set_highlight('NvimTreeGitNew', colors.green, colors.bg)
  set_highlight('NvimTreeGitDirty', colors.blue, colors.bg)
  set_highlight('NvimTreeEndOfBuffer', colors.bg, colors.bg)
end

return M
