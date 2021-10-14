local util = require('lighthaus.utils')
local colors = require('lighthaus.colors')

local lualine_colors = {
  normal = util.tint_lualine_color(colors.cyan2, colors.bg_dark, colors.bg),
  insert = util.tint_lualine_color(colors.green, colors.bg_dark, colors.bg),
  command = util.tint_lualine_color(colors.purple, colors.bg_dark, colors.bg),
  visual = util.tint_lualine_color(colors.hl_yellow, colors.bg_dark, colors.bg),
  replace = util.tint_lualine_color(colors.red, colors.bg_dark, colors.bg),
  inactive = {
    a = { bg = colors.bg, fg = colors.fg_nc_statusline },
    b = { bg = colors.bg, fg = colors.fg_nc_statusline },
    c = { bg = colors.bg, fg = colors.fg_nc_statusline },
  },
}

return lualine_colors
