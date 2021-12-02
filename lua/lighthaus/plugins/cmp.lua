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
  vim.cmd('hi link CmpItemKindProperty TSVariable')
  vim.cmd('hi link CmpItemKindConstructor TSFunction')
  vim.cmd('hi link CmpItemKindClass Type')
  vim.cmd('hi link CmpItemKindStruct Type')
  vim.cmd('hi link CmpItemKindTypeParameter Type')
  vim.cmd('hi link CmpItemKindInterface Typedef')
  vim.cmd('hi link CmpItemKindModule TSStructure')
  vim.cmd('hi link CmpItemKindUnit TSConstant')
  vim.cmd('hi link CmpItemKindConstant TSConstant')
  vim.cmd('hi link CmpItemKindValue TSVariable')
  vim.cmd('hi link CmpItemKindEnum TSLabel')
  vim.cmd('hi link CmpItemKindEnumMember TSLabel')
  vim.cmd('hi link CmpItemKindKeyword TSKeyword')
  set_highlight('CmpItemKindSnippet', colors.orange2)
  set_highlight('CmpItemKindColor', colors.orange2)
  set_highlight('CmpItemKindFile', colors.white2)
  vim.cmd('hi link CmpItemKindReference TSVariable')
  set_highlight('CmpItemKindFolder', colors.white2)
  set_highlight('CmpItemKindEvent', colors.hl_yellow)
  vim.cmd('hi link CmpItemKindOperator Operator')
end

return M
