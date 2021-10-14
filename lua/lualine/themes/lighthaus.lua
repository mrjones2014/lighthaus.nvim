local util = require('lighthaus.utils')
local colors = require('lighthaus.colors')

local lualine_colors = {
  normal = util.tint_lualine_color(colors.blue, colors),
  insert = util.tint_lualine_color(colors.green, colors),
  command = util.tint_lualine_color(colors.purple, colors),
  visual = util.tint_lualine_color(colors.yellow, colors),
  replace = util.tint_lualine_color(colors.red, colors),
  inactive = {
    a = { bg = colors.bg, fg = colors.fg_nc_statusline },
    b = { bg = colors.bg, fg = colors.fg_nc_statusline },
    c = { bg = colors.bg, fg = colors.fg_nc_statusline },
  },
}

return lualine_colors
