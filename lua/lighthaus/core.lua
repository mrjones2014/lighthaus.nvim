local M = {}

function M.apply(colors, options)
  local formats = require('lighthaus.formats')
  local set_highlight = require('lighthaus.utils').set_highlight
  local config = require('lighthaus.config').config

  -- - - - - - - - - -
  -- LSP
  -- - - - - - - - - -

  local lsp_underline_style = formats.undercurl
  if
    options
    and options.lsp_underline_style
    and (options.lsp_underline_style == formats.underline or options.lsp_underline_style == formats.undercurl)
  then
    lsp_underline_style = options.lsp_underline_style
  elseif options and options.lsp_underline_style == '' then
    lsp_underline_style = nil
  end

  -- Neovim 0.5.0-0.5.1
  set_highlight('LspDiagnosticsDefaultError', colors.lsp_error, colors.bg)
  set_highlight('LspDiagnosticsUnderlineError', colors.lsp_error, colors.bg, lsp_underline_style)
  set_highlight('LspDiagnosticsDefaultWarning', colors.lsp_warning, colors.bg)
  set_highlight('LspDiagnosticsUnderlineWarning', colors.lsp_warning, colors.bg, lsp_underline_style)
  set_highlight('LspDiagnosticsDefaultInformation', colors.lsp_information, colors.bg)
  set_highlight('LspDiagnosticsDefaultHint', colors.lsp_hint, colors.bg)
  set_highlight('LspDiagnosticsUnderlineHint', colors.lsp_hint, colors.bg, lsp_underline_style)
  set_highlight('LspDiagnosticsSignError', colors.lsp_error, colors.bg)
  set_highlight('LspDiagnosticsUnderlineError', colors.lsp_error, colors.bg, lsp_underline_style)
  set_highlight('LspDiagnosticsSignWarning', colors.lsp_warning, colors.bg)
  set_highlight('LspDiagnosticsUnderlineWarning', colors.lsp_warning, colors.bg, lsp_underline_style)
  set_highlight('LspDiagnosticsSignInformation', colors.lsp_information, colors.bg)
  set_highlight('LspDiagnosticsSignHint', colors.lsp_hint, colors.bg)
  set_highlight('LspDiagnosticsUnderlineHint', colors.lsp_hint, colors.bg, lsp_underline_style)

  -- Neovim 0.6.0+
  set_highlight('DiagnosticError', colors.lsp_error, colors.bg)
  set_highlight('DiagnosticUnderlineError', colors.lsp_error, colors.bg, lsp_underline_style)
  set_highlight('DiagnosticWarn', colors.lsp_warning, colors.bg)
  set_highlight('DiagnosticUnderlineWarn', colors.lsp_warning, colors.bg, lsp_underline_style)
  set_highlight('DiagnosticInfo', colors.lsp_information, colors.bg)
  set_highlight('DiagnosticHint', colors.lsp_hint, colors.bg)
  set_highlight('DiagnosticUnderlineHint', colors.lsp_hint, colors.bg, lsp_underline_style)

  -- lsp_extensions
  set_highlight('RustInlayHint', colors.grey, colors.blacker_than_black)

  -- ― ― ― ― ― ― ― ― ―
  -- EDITOR SETTINGS
  -- ― ― ― ― ― ― ― ― ―
  set_highlight('Normal', colors.fg, config.transparent and 'NONE' or colors.bg)
  set_highlight('Cursor', colors.hl_yellow, colors.bg)
  if vim.o.cursorline then
    set_highlight('CursorLine', nil, colors.black)
  else
    set_highlight('CursorLine')
  end
  set_highlight('CursorColumn')
  set_highlight('CursorLineNr', colors.hl_yellow, colors.black)
  set_highlight('ColorColumn', nil, colors.black)
  set_highlight('LineNr', colors.line_fg, config.transparent and 'NONE' or colors.bg)
  set_highlight('EndOfBuffer', config.transparent and 'NONE' or colors.bg, config.transparent and 'NONE' or colors.bg)
  set_highlight('WinSeparator', config.bg_dark and colors.grey or colors.black)

  -- ― ― ― ― ― ― ― ― ―
  -- FLOATING WINDOWS
  -- ― ― ― ― ― ― ― ― ―
  if options.bg_dark then
    set_highlight('NormalFloat', colors.white2, colors.bg_light)
    set_highlight('FloatBorder', colors.white2, colors.bg_light)
  else
    set_highlight('NormalFloat', colors.white2, colors.bg_dark)
    set_highlight('FloatBorder', colors.white2, colors.bg_dark)
  end

  -- ― ― ― ― ― ― ― ― ―
  -- GIT
  -- ― ― ― ― ― ― ― ― ―
  set_highlight('gitcommitUnmerged', colors.red)
  set_highlight('gitcommitBranch', colors.purple)
  set_highlight('gitcommitDiscardedType', colors.red)
  set_highlight('gitcommitSelectedType', colors.green)
  set_highlight('gitcommitHeader', colors.fg)
  set_highlight('gitcommitUntrackedFile', colors.white2)
  set_highlight('gitcommitDiscardedFile', colors.red)
  set_highlight('gitcommitSelectedFile', colors.hl_yellow)
  set_highlight('gitcommitUnmergedFile', colors.orange)
  set_highlight('gitcommitFile', colors.white)

  vim.cmd('hi link gitcommitComment Comment')
  vim.cmd('hi link gitcommitUntracked Comment')
  vim.cmd('hi link gitcommitDiscarded Comment')

  -- ― ― ― ― ― ― ― ― ―
  -- DIFFERENCES
  -- ― ― ― ― ― ― ― ― ―
  set_highlight('DiffAdd', colors.green)
  set_highlight('DiffChange', colors.orange)
  set_highlight('DiffDelete', colors.red)
  set_highlight('DiffText', colors.blue)
  set_highlight('DiffLine', colors.blue)

  set_highlight('DiffFile', colors.purple)
  set_highlight('DiffNewFile', colors.hl_yellow)

  set_highlight('ErrorMsg', colors.red2, colors.bg)
  set_highlight('WarningMsg', colors.orange2, colors.bg)
  set_highlight('Question', colors.purple2, colors.bg)

  set_highlight('Pmenu', colors.white2, colors.black)
  set_highlight('PmenuSel', colors.hl_orange, colors.hl_bg)
  set_highlight('PmenuSbar', colors.white2, colors.black)
  set_highlight('PmenuThumb', colors.white, colors.black)

  -- ― ― ― ― ― ― ― ― ―
  --  COLUMNS
  -- ― ― ― ― ― ― ― ― ―
  set_highlight('Conceal', colors.fg)

  set_highlight('VertSplit', colors.vsplit_fg, colors.vsplit_bg, formats.bold)

  set_highlight('Folded', colors.purple2)
  set_highlight('FoldColumn', colors.line_fg)
  set_highlight('SignColumn', colors.line_fg)

  -- ― ― ― ― ― ― ― ― ―
  -- TAB
  -- ― ― ― ― ― ― ― ― ―
  set_highlight('TabLine', colors.white2)
  set_highlight('TabLineFill', colors.white2)
  set_highlight('TabLineSel', colors.fg)

  -- ― ― ― ― ― ― ― ― ―
  -- VIM
  -- ― ― ― ― ― ― ― ― ―
  set_highlight('vimMapRhs', colors.blue2)
  set_highlight('vimNotation', colors.blue2)
  vim.cmd('hi link vimFunction Function')
  vim.cmd('hi link vimUserFunc Function')

  -- ― ― ― ― ― ― ― ― ―
  -- FILE NAVIGATION / SEARCHING
  -- ― ― ― ― ― ― ― ― ―
  set_highlight('Directory', colors.bg, colors.blue)
  set_highlight('IncSearch', colors.bg, colors.orange)
  set_highlight('Search', colors.bg, colors.orange)

  -- ― ― ― ― ― ― ― ― ―
  -- PROMPT / STATUS
  -- ― ― ― ― ― ― ― ― ―
  set_highlight('Title', colors.white2)
  set_highlight('WildMenu', colors.fg)

  set_highlight('StatusLine', colors.blue2, colors.black)
  set_highlight('StatusLineTerm', colors.blue2, colors.black)
  set_highlight('StatusLineNC', colors.white2, colors.black)
  set_highlight('StatusLineTermNC', colors.white2, colors.black)

  -- ― ― ― ― ― ― ― ― ―
  -- VISUAL AID
  -- ― ― ― ― ― ― ― ― ―
  set_highlight('MatchParen', colors.hl_orange)
  set_highlight('SpecialKey', colors.white2)
  if options.bg_dark then
    set_highlight('Visual', colors.selection_fg, colors.selection_bg_dark)
    set_highlight('VisualNOS', colors.selection_fg, colors.selection_bg_dark)
  else
    set_highlight('Visual', colors.selection_fg, colors.selection_bg)
    set_highlight('VisualNOS', colors.selection_fg, colors.selection_bg)
  end

  -- ― ― ― ― ― ― ― ― ―
  -- SPELL CHECK
  -- ― ― ― ― ― ― ― ― ―
  set_highlight('SpellBad', colors.red, colors.black, formats.underline)
  set_highlight('SpellCap', colors.orange, colors.black)
  set_highlight('SpellLocal', colors.orange, colors.black)
  set_highlight('SpellRare', colors.orange, colors.black)

  -- ― ― ― ― ― ― ― ― ―
  -- VARIABLE TYPES
  -- ― ― ― ― ― ― ― ― ―
  set_highlight('Boolean', colors.blue3)
  set_highlight('Character', colors.green2)
  set_highlight('Constant', colors.white)
  set_highlight('Define', colors.purple2)
  set_highlight('String', colors.green2)
  set_highlight('Number', colors.purple2)
  set_highlight('Float', colors.purple2)

  -- ― ― ― ― ― ― ― ― ―
  -- SYNTAX
  -- ― ― ― ― ― ― ― ― ―
  set_highlight('Whitespace', colors.non_text)
  set_highlight('NonText', colors.non_text)
  set_highlight('Comment', colors.grey, nil, config.italic_comments and require('lighthaus.formats').italic)
  set_highlight('Delimiter', colors.white2)

  set_highlight('Identifier', colors.white)
  set_highlight('Include', colors.cyan2)
  set_highlight('Function', colors.blue3)
  set_highlight('Method', colors.blue)
  set_highlight('Statement', colors.cyan2)
  set_highlight('StorageClass', colors.cyan2)
  set_highlight('Structure', colors.cyan2)
  set_highlight('Type', colors.blue3)
  set_highlight('Typedef', colors.cyan2)

  set_highlight('Conditional', colors.cyan2, nil, config.italic_keywords and require('lighthaus.formats').italic)
  set_highlight('Repeat', colors.cyan2)
  set_highlight('Label', colors.cyan2)
  set_highlight('Operator', colors.cyan2)
  set_highlight('Keyword', colors.cyan2, nil, config.italic_keywords and require('lighthaus.formats').italic)
  set_highlight('Exception', colors.blue3)
  set_highlight('PreProc', colors.cyan2)
  set_highlight('Special', colors.orange2)
  set_highlight('SpecialChar', colors.fg_alt)
  set_highlight('SpecialComment', colors.blue3, nil, config.italic_comments and require('lighthaus.formats').italic)

  set_highlight('Tag', colors.white2)
  set_highlight('Todo', colors.fg_alt)

  -- + + + + + + + + + LANGUAGES + + + + + + + + +

  -- ― ― ― ― ― ― ― ― ―
  -- ―  C LIKE ―
  -- ― ― ― ― ― ― ― ― ―
  set_highlight('Macro', colors.purple2)
  set_highlight('PreCondit', colors.purple2)

  set_highlight('Debug', colors.fg)
  set_highlight('Ignore', colors.white2)

  -- ― ― ― ― ― ― ―
  -- ―  GO LANG ―
  -- ― ― ― ― ― ― ―
  set_highlight('goDirective', colors.purple2)
  set_highlight('goDeclType', colors.hl_yellow)
  set_highlight('goDeclaration', colors.cyan)
  set_highlight('goBuiltins', colors.fg_alt)
  set_highlight('goVarDefs', colors.cyan2)
  set_highlight('goVarAssign', colors.blue3)
  set_highlight('goVar', colors.purple2)
  set_highlight('goDeclType', colors.orange2)
  set_highlight('goSemicolon', colors.white2)
  set_highlight('goQuotationsMarks', colors.white2)
  vim.cmd('hi link goConstants Constant')
  vim.cmd('hi link goFunctionCall Function')
  vim.cmd('hi link goEscapeError ErrorMsg')
  vim.cmd('hi link goType Type')
  vim.cmd('hi link goTypeName Typedef')

  -- ― ― ― ― ― ―
  -- ―  JAVA ―
  -- ― ― ― ― ― ―
  set_highlight('javaOperator', colors.cyan2)
  set_highlight('javaVarArg', colors.purple2)

  -- ― ― ― ― ― ―
  -- ―  JSON ―
  -- ― ― ― ― ― ―
  set_highlight('jsonKeyword', colors.purple2)
  set_highlight('jsonNoise', colors.white)
  set_highlight('jsonQuote', colors.grey)
  set_highlight('jsonBraces', colors.hl_orange)
  vim.cmd('hi link jsonBoolean Boolean')
  vim.cmd('hi link jsonString String')

  -- ― ― ― ― ― ―
  -- ―  MAKE ―
  -- ― ― ― ― ― ―
  set_highlight('makePreCondit', colors.purple2)
  set_highlight('makeCommands', colors.orange2)

  -- ― ― ― ― ― ― ― ― ―
  -- ―  MARKDOWN ―
  -- ― ― ― ― ― ― ― ― ―
  set_highlight('markdownBold', colors.white2, formats.bold)
  set_highlight('markdownItalic', colors.white2, formats.italic)

  set_highlight('markdownH1', colors.blue3)
  vim.cmd('hi link markdownH2 markdownH1')
  vim.cmd('hi link markdownH3 markdownH1')
  vim.cmd('hi link markdownH4 markdownH1')
  vim.cmd('hi link markdownH5 markdownH1')
  vim.cmd('hi link markdownH6 markdownH1')

  set_highlight('markdownCode', colors.orange2)
  set_highlight('markdownCodeBlock', colors.orange2)
  vim.cmd('hi link markdownCodeDelimiter Delimiter')
  set_highlight('markdownCodeError', colors.red2)
  set_highlight('markdownCodeSpecial', colors.orange)

  set_highlight('markdownUrl', colors.purple)
  set_highlight('markdownUrlTitleDelimiter', colors.cyan)

  -- ― ― ― ― ― ― ―
  -- ―  PYTHON ―
  -- ― ― ― ― ― ― ―
  set_highlight('pythonConditional', colors.purple2)
  set_highlight('pythonException', colors.purple2)
  set_highlight('pythonFunction', colors.blue3)
  set_highlight('pythonInclude', colors.blue)
  set_highlight('pythonOperator', colors.cyan)
  set_highlight('pythonStatement', colors.cyan)
  set_highlight('pythonBoolean', colors.blue3)

  -- ― ― ― ― ―
  -- ―  SQL ―
  -- ― ― ― ― ―
  set_highlight('sqlKeyword', colors.cyan2)
  set_highlight('sqlSpecial', colors.orange2)

  -- ― ― ― ― ― ―
  -- ―  YAML ―
  -- ― ― ― ― ― ―
  set_highlight('yamlBlockMappingKey', colors.purple2)
  set_highlight('yamlBool', colors.cyan2)
  set_highlight('yamlDocumentStart', colors.hl_orange)
  set_highlight('yamlKey', colors.purple)
  set_highlight('yamlString', colors.green2)
  vim.cmd('hi link yamlComment Comment')
  vim.cmd('hi link yamlConstant Constant')
  vim.cmd('hi link yamlKeyValueDelimiter Delimiter')

  -- ― ― ― ― ― ―
  -- ―  PERL ―
  -- ― ― ― ― ― ―
  -- see: https://github.com/mrjones2014/lighthaus.nvim/issues/10
  -- regex-based Perl highlighter sets the wrong highlight group
  -- for function arguments; this will not affect treesitter highlighting
  vim.cmd('hi link perlSubPrototypeError perlSubPrototype')

  -- ― ― ― ― ― ― ― ― ―
  -- NEOVIM COLOR BUFFER
  -- ― ― ― ― ― ― ― ― ―
  vim.g.terminal_color_0 = colors.black
  vim.g.terminal_color_1 = colors.red
  vim.g.terminal_color_2 = colors.green
  vim.g.terminal_color_3 = colors.orange
  vim.g.terminal_color_4 = colors.blue
  vim.g.terminal_color_5 = colors.purple
  vim.g.terminal_color_6 = colors.cyan
  vim.g.terminal_color_7 = colors.white
  vim.g.terminal_color_8 = colors.grey
  vim.g.terminal_color_9 = colors.red2
  vim.g.terminal_color_10 = colors.green2
  vim.g.terminal_color_11 = colors.orange2
  vim.g.terminal_color_12 = colors.blue2
  vim.g.terminal_color_13 = colors.purple2
  vim.g.terminal_color_14 = colors.cyan2
  vim.g.terminal_color_15 = colors.white2
  vim.g.terminal_color_background = colors.bg
  vim.g.terminal_color_foreground = colors.fg
end

return M
