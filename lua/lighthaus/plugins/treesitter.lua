local M = {}

function M.apply(colors)
  local set_highlight = require('lighthaus.utils').set_highlight

  set_highlight('TSTypeBuiltin', colors.orange2)
  vim.cmd('hi link TSInclude Include')
  vim.cmd('hi link TSParameter Parameter')
  vim.cmd('hi link TSPunctBracket MatchParem')
  vim.cmd('hi link TSPunctDelimiter Delimiter')
  vim.cmd('hi link TSType Type')

  vim.cmd('hi link TSFunction Function')
  set_highlight('TSFuncBuiltin', colors.cyan)
  vim.cmd('hi link TSMethod TSFunction')
  vim.cmd('hi link TSFuncMacro Macro')
  vim.cmd('hi link TSKeyword Keyword')
  vim.cmd('hi link TSKeywordFunction Keyword')
  vim.cmd('hi link TSKeywordOperator Operator')
  vim.cmd('hi link TSLabel Label')
  vim.cmd('hi link TSOperator Operator')
  vim.cmd('hi link TSPunctSpecial Special')
  vim.cmd('hi link TSStructure Structure')
  vim.cmd('hi link TSTag Tag')

  vim.cmd('hi link TSBoolean Boolean')
  vim.cmd('hi link TSConstant Constant')
  vim.cmd('hi link TSFloat Float')
  vim.cmd('hi link TSString String')
  vim.cmd('hi link TSNumber Number')
  set_highlight('TSStringRegex', colors.cyan2)
  set_highlight('TSVariable', colors.orange2)
  set_highlight('TSVariableBuiltin', colors.orange2)
  set_highlight('TSProperty', colors.blue3)

  vim.cmd('hi link TSError ErrorMsg')
  vim.cmd('hi link TSException Exception')
end

return M
