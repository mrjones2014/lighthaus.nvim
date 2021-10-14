local M = {
  black = '#21252D',
  grey = '#8E8D8D',
  red = '#FC2929',
  red2 = '#FF5050',
  green = '#44B273',
  green2 = '#50C16E',
  orange = '#E25600',
  orange2 = '#ED722E',
  blue = '#1D918B',
  blue2 = '#47A8A1',
  blue3 = '#0db9d7',
  purple = '#D16BB7',
  purple2 = '#D68EB2',
  cyan = '#00BFA4',
  cyan2 = '#5AD1AA',
  white = '#FFFADE',
  white2 = '#CCCCCC',
  bg = '#18191E',
  bg_dark = '#000000',
  fg = '#FFFADE',
  fg_alt = '#FFEE79',
  hl_yellow = '#FFFF00',
  hl_orange = '#FF4D00',
  hl_bg = '#090B26',
  gutter_bg = '#282c34',
  non_text = '#373C45',
  lsp = {
    error = '#db4b4b',
    warning = '#e0af68',
    information = '#0db9d7',
    hint = '#10B981',
  },
}

M.line_fg = M.grey
M.selection_bg = M.hl_bg
M.selection_fg = M.hl_orange

M.vsplit_fg = M.hl_bg
M.vsplit_fg_light = M.white2
M.vsplit_bg = M.black

M.fg_nc_statusline = require('lighthaus.utils').darken(M.fg, 0.5)

return M
