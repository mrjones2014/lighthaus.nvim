local M = {}

function M.apply(colors)
  vim.cmd('hi link TelescopeNormal NormalFloat')
  vim.cmd('hi link TelescopeBorder FloatBorder')
  vim.cmd('hi link TelescopePreviewNormal NormalFloat')
  vim.cmd('hi link TelescopeResultsNormal NormalFloat')
end

return M
