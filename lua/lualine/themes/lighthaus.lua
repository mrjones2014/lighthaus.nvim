local util = require('lighthaus.utils')
local colors = require('lighthaus.colors')

local lualine_colors = {
  normal = util.tint_lualine_color(colors.blue),
  insert = util.tint_lualine_color(colors.green),
  command = util.tint_lualine_color(colors.purple),
  visual = util.tint_lualine_color(colors.hl_yellow),
  replace = util.tint_lualine_color(colors.red),
  inactive = {
    a = { bg = colors.bg, fg = colors.fg_nc_statusline },
    b = { bg = colors.bg, fg = colors.fg_nc_statusline },
    c = { bg = colors.bg, fg = colors.fg_nc_statusline },
  },
}

return lualine_colors
