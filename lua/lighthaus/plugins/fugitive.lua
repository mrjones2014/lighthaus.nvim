local M = {}

function M.apply(colors)
  vim.cmd('hi link diffAdded DiffAdd')
  vim.cmd('hi link diffChanged DiffChange')
  vim.cmd('hi link diffRemoved DiffDelete')
end

return M
