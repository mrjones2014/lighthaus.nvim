local M = {}

function M.apply()
  vim.cmd('hi link SignifySignAdd GitGutterAdd')
  vim.cmd('hi link SignifySignChange GitGutterChange')
  vim.cmd('hi link SignifySignDelete GitGutterDelete')
end

return M
