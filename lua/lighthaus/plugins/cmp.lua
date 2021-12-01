local M = {}

function M.apply(colors)
  local set_highlight = require('lighthaus.utils').set_highlight

  set_highlight('CmpItemAbbrMatch', colors.cyan)
  set_highlight('CmpItemAbbrMatchFuzzy', colors.cyan)
  -- default kind color
  set_highlight('CmpItemKind', colors.white)
  -- specific item kinds
  set_highlight('CmpItemKindText', colors.white)
  vim.cmd('hi link CmpItemKindFunction TSFunction')
  vim.cmd('hi link CmpItemKindMethod TSMethod')
  vim.cmd('hi link CmpItemKindVariable TSVariable')
  vim.cmd('hi link CmpItemKindKeyword TSKeyword')
  vim.cmd('hi link CmpItemKindField TSVariable')
end

return M
