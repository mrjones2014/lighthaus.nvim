local util = require('lighthaus.utils')
local colors = require('lighthaus.colors')

local lualine_colors = {
  normal = util.tint_lualine_color(colors.cyan2, colors.bg, colors.bg_dark),
  insert = util.tint_lualine_color(colors.green, colors.bg, colors.bg_dark),
  command = util.tint_lualine_color(colors.purple, colors.bg, colors.bg_dark),
  visual = util.tint_lualine_color(colors.hl_yellow, colors.bg, colors.bg_dark),
  replace = util.tint_lualine_color(colors.red, colors.bg, colors.bg_dark),
  inactive = {
    a = { bg = colors.bg, fg = colors.fg_nc_statusline },
    b = { bg = colors.bg, fg = colors.fg_nc_statusline },
    c = { bg = colors.bg, fg = colors.fg_nc_statusline },
  },
}

return lualine_colors
