local M = {}

local default_config = {
  bg_dark = false,
  colors = {},
  lsp_underline_style = 'undercurl',
  transparent = false,
}

M.config = vim.deepcopy(default_config)

function M.init(user_config)
  user_config = user_config or {}
  local colors = vim.deepcopy(require('lighthaus.colors'))
  local dark_bg_colors = require('lighthaus.color-overrides')

  -- apply bg_dark colors
  if user_config.bg_dark then
    colors.bg = dark_bg_colors.bg
    colors.fg = dark_bg_colors.fg
  end

  -- apply user override colors
  if user_config.colors and type(user_config.colors) == 'table' then
    colors = vim.tbl_deep_extend('force', colors, user_config.colors)
  end

  -- set normalized colors map on config
  user_config.colors = colors

  local defaults = vim.deepcopy(default_config)
  M.config = vim.tbl_deep_extend('force', defaults, user_config)
  return M.config
end

return M
