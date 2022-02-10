local M = {}

function M.apply(colors)
  local set_highlight = require('lighthaus.utils').set_highlight

  set_highlight('NeoTreeGitAdded', colors.green, colors.bg)
  set_highlight('NeoTreeGitModified', colors.blue, colors.bg)
  set_highlight('NeoTreeGitConflict', colors.red, colors.bg)
  set_highlight('NeoTreeGitDeleted', colors.red, colors.bg)
  vim.cmd('hi link NeoTreeGitUntracked NeoTreeNormal')
end

return M
