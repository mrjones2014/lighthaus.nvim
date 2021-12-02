local M = {}

local utils = require('lighthaus.utils')

local default_config = {
  bg_dark = false,
  colors = {},
  lsp_underline_style = 'undercurl',
}

function M.init(user_config)
  user_config = user_config or {}
  local colors = utils.clone_table(require('lighthaus.colors'))
  local dark_bg_colors = require('lighthaus.color-overrides')

  -- apply bg_dark colors
  if user_config.bg_dark then
    colors.bg = dark_bg_colors.bg
    colors.fg = dark_bg_colors.fg
  end

  -- apply user override colors
  if user_config.colors and type(user_config.colors) == 'table' then
    colors = utils.merge_tables(colors, user_config.colors)
  end

  -- set normalized colors map on config
  user_config.colors = colors

  local defaults = utils.clone_table(default_config)
  return utils.merge_tables(defaults, user_config)
end

return M
