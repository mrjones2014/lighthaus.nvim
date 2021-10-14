local M = {
  black = { gui = '#21252D', cterm = '234' },
  grey = { gui = '#8E8D8D', cterm = '246' },
  red = { gui = '#FC2929', cterm = '79' },
  red2 = { gui = '#FF5050', cterm = '79' },
  green = { gui = '#44B273', cterm = '72' },
  green2 = { gui = '#50C16E', cterm = '72' },
  orange = { gui = '#E25600', cterm = '166' },
  orange2 = { gui = '#ED722E', cterm = '166' },
  blue = { gui = '#1D918B', cterm = '30' },
  blue2 = { gui = '#47A8A1', cterm = '30' },
  purple = { gui = '#D16BB7', cterm = '169' },
  purple2 = { gui = '#D68EB2', cterm = '169' },
  cyan = { gui = '#00BFA4', cterm = '43' },
  cyan2 = { gui = '#5AD1AA', cterm = '43' },
  white = { gui = '#FFFADE', cterm = '230' },
  white2 = { gui = '#CCCCCC', cterm = '230' },
  bg = { gui = '#18191E', cterm = '234' },
  bg_dark = { gui = '#000000', cterm = '0' },
  fg = { gui = '#FFFADE', cterm = '230' },
  fg_alt = { gui = '#FFEE79', cterm = '230' },
  hl_yellow = { gui = '#FFFF00', cterm = '226' },
  hl_orange = { gui = '#FF4D00', cterm = '202' },
  hl_bg = { gui = '#090B26', cterm = '234' },
  gutter_bg = { gui = '#282c34', cterm = '236' },
  non_text = { gui = '#373C45', cterm = '239' },
}

M.line_fg = M.grey
M.selection_bg = M.hl_bg
M.selection_fg = M.hl_orange

M.vsplit_fg = M.hl_bg
M.vsplit_fg_light = M.white2
M.vsplit_bg = M.black

return M
