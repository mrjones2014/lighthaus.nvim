local M = {}

function M.apply(colors)
  vim.cmd('hi link TelescopeNormal NormalFloat')
  vim.cmd('hi link TelescopeNormal FloatBorder')
end

return M
