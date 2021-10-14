local M = {}

M.bg = '#000000'
M.fg = '#ffffff'

function M.darken(hex, amount, bg)
  return M.blend(hex, bg or M.bg, math.abs(amount))
end
function M.lighten(hex, amount, fg)
  return M.blend(hex, fg or M.fg, math.abs(amount))
end

function M.tint_lualine_color(color)
  local colors = require('lighthaus.colors')
  local group = {
    a = { bg = color, fg = colors.bg },
    b = { bg = M.darken(color, 0.2), fg = M.lighten(color, 0.2) },
  }
  if vim.o.background == 'dark' then
    group.c = {
      bg = M.darken(color, 0.01, colors.bg2),
      fg = M.lighten(color, 0.4, colors.fg),
    }
  else
    -- inverting colors for light colorschemes
    group.c = {
      bg = M.lighten(color, 0.01, colors.bg2),
      fg = M.darken(color, 0.4, colors.fg),
    }
  end
  return group
end

return M
