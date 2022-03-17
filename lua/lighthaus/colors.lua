local M = {
  bg = '#18191E', -- this gets set to the right value based on config
  bg_light = '#18191E',
  bg_dark = '#000000',
  fg = '#FFFADE',
  fg_alt = '#FFEE79',
  black = '#21252D',
  blacker_than_black = '#1F1F1F',
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
  hl_yellow = '#FFFF00',
  hl_orange = '#FF4D00',
  hl_bg = '#090B26',
  hl_bg_dark = '#282c34',
  gutter_bg = '#282c34',
  non_text = '#373C45',
  lsp_error = '#db4b4b',
  lsp_warning = '#e0af68',
  lsp_information = '#0db9d7',
  lsp_hint = '#10B981',
}

M.line_fg = M.grey
M.selection_bg = M.hl_bg
M.selection_bg_dark = M.hl_bg_dark
M.selection_fg = M.hl_orange

M.vsplit_fg = M.hl_bg
M.vsplit_fg_light = M.white2
M.vsplit_bg = M.black

M.fg_nc_statusline = require('lighthaus.utils').darken(M.fg, 0.5)

return M
