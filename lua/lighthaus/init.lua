local function set_highlight(group, fg, bg, attr)
  if type(fg) == 'table' then
    vim.cmd('hi ' .. group .. ' guifg=' .. fg.gui .. ' ctermfg=' .. fg.cterm)
  else
    vim.cmd('hi ' .. group .. ' guifg=NONE ctermfg=NONE')
  end

  if type(bg) == 'table' then
    vim.cmd('hi ' .. group .. ' guibg=' .. bg.gui .. ' ctermbg=' .. bg.cterm)
  else
    vim.cmd('hi ' .. group .. ' guibg=NONE ctermbg=NONE')
  end

  if attr and attr ~= '' and #attr > 0 then
    vim.cmd('hi ' .. group .. ' gui=' .. attr .. ' cterm=' .. attr)
  else
    vim.cmd('hi ' .. group .. ' gui=NONE cterm=NONE')
  end
end

local M = {}

function M.setup(options)
  vim.cmd([[
    set background=dark
    highlight clear

    if exists("syntax_on")
      syntax reset
    endif
  ]])

  local colors = require('lighthaus.colors')
  local formats = require('lighthaus.formats')

  local bg
  if options.bg_dark then
    bg = colors.bg_dark
  else
    bg = colors.bg
  end

  -- ― ― ― ― ― ― ― ― ―
  -- EDITOR SETTINGS
  -- ― ― ― ― ― ― ― ― ―
  set_highlight('Normal', colors.fg, bg)
  set_highlight('Cursor', colors.hl_yellow, bg)
  set_highlight('CursorLine')
  set_highlight('CursorColumn')
  set_highlight('CursorLineNr', colors.hl_yellow, colors.black)
  set_highlight('ColorColumn', colors.black)
  set_highlight('LineNr', colors.line_fg, bg)

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

  set_highlight('ErrorMsg', colors.red2, bg)
  set_highlight('WarningMsg', colors.orange2, bg)
  set_highlight('Question', colors.purple2, bg)

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
  -- FILE NAVIGATION / SEARCHING
  -- ― ― ― ― ― ― ― ― ―
  set_highlight('Directory', bg, colors.blue)
  set_highlight('IncSearch', bg, colors.orange)
  set_highlight('Search', bg, colors.orange)

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
  set_highlight('Visual', colors.selection_fg, colors.selection_bg)
  set_highlight('VisualNOS', colors.selection_fg, colors.selection_bg)

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
  set_highlight('Boolean', colors.blue2)
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
  set_highlight('Comment', colors.white2)
  set_highlight('Delimiter', colors.white2)

  set_highlight('Identifier', colors.white)
  set_highlight('Include', colors.cyan2)
  set_highlight('Function', colors.blue2)
  set_highlight('Statement', colors.cyan2)
  set_highlight('StorageClass', colors.cyan2)
  set_highlight('Structure', colors.cyan2)
  set_highlight('Type', colors.blue2)
  set_highlight('Typedef', colors.cyan2)

  set_highlight('Conditional', colors.cyan2)
  set_highlight('Repeat', colors.cyan2)
  set_highlight('Label', colors.cyan2)
  set_highlight('Operator', colors.cyan2)
  set_highlight('Keyword', colors.cyan2)
  set_highlight('Exception', colors.blue2)
  set_highlight('PreProc', colors.cyan2)
  set_highlight('Special', colors.orange2)
  set_highlight('SpecialChar', colors.fg_alt)
  set_highlight('SpecialComment', colors.blue2)

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
  set_highlight('goVarAssign', colors.blue2)
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

  set_highlight('markdownH1', colors.blue)
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
  set_highlight('pythonFunction', colors.blue2)
  set_highlight('pythonInclude', colors.blue)
  set_highlight('pythonOperator', colors.cyan)
  set_highlight('pythonStatement', colors.cyan)
  set_highlight('pythonBoolean', colors.blue2)

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

  -- + + + + + + + + + PLUGINS + + + + + + + + +

  -- ― ― ― ― ― ― ― ― ―
  -- NVIM-TREE
  -- https://github.com/kyazdani42/nvim-tree.lua
  -- ― ― ― ― ― ― ― ― ―
  set_highlight('NvimTreeFolderName', colors.fg, bg)
  set_highlight('NvimTreeOpenedFolderName', colors.fg, bg)
  set_highlight('NvimTreeGitNew', colors.green, bg)
  set_highlight('NvimTreeGitDirty', colors.blue, bg)
  set_highlight('NvimTreeEndOfBuffer', bg, bg)

  -- ― ― ― ― ― ― ― ― ―
  -- BEACON.NVIM
  -- https.//github.com/DanilaMihailov/beacon.nvim
  -- ― ― ― ― ― ― ― ― ―
  set_highlight('Beacon', colors.grey)

  -- ― ― ― ― ― ― ― ― ―
  -- CtrlP
  -- https.//github.com/kien/ctrlp.vim
  -- ― ― ― ― ― ― ― ― ―
  set_highlight('CtrlPMatch', colors.cyan2)

  -- ― ― ― ― ― ― ― ― ―
  -- FZF
  -- https.//github.com/junegunn/fzf.vim
  -- ― ― ― ― ― ― ― ― ―
  set_highlight('FZF_fg', colors.white)
  set_highlight('FZF_bg', colors.black)
  set_highlight('FZF_hl', colors.hl_yellow)

  set_highlight('FZF_fg2', colors.fg_alt, formats.bold)
  set_highlight('FZF_hl2', colors.orange2, formats.bold)

  set_highlight('FZF_info', colors.purple2)
  set_highlight('FZF_border', colors.blue)

  set_highlight('FZF_prompt', colors.green2)
  set_highlight('FZF_pointer', colors.hl_yellow, formats.bold)
  set_highlight('FZF_marker', colors.red)
  set_highlight('FZF_spinner', colors.cyan2)
  set_highlight('FZF_header', colors.blue)

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
  -- NERDTREE
  -- https.//github.com/preservim/nerdtree
  -- ― ― ― ― ― ― ― ― ―
  set_highlight('NerdTreeClosable', colors.orange2)
  set_highlight('NerdTreeOpenable', colors.green2)

  set_highlight('NerdTreeDir', colors.blue2)
  set_highlight('NerdTreeDirSlash', colors.cyan)

  set_highlight('NerdTreeExecFile', colors.green)
  set_highlight('NerdTreeFile', colors.white)

  set_highlight('NerdTreeHelp', colors.white2)
  set_highlight('NerdTreeUp', colors.orange)

  set_highlight('NerdTreeFlags', colors.cyan2)

  -- ― ― ― ― ― ― ― ― ―
  -- TREESITTER
  -- https.//github.com/nvim-treesitter/nvim-treesitter
  -- ― ― ― ― ― ― ― ― ―
  set_highlight('TSTypeBuiltin', colors.orange2)
  vim.cmd('hi link TSInclude Include')
  vim.cmd('hi link TSParameter Parameter')
  vim.cmd('hi link TSPunctBracket MatchParem')
  vim.cmd('hi link TSPunctDelimiter Delimiter')
  vim.cmd('hi link TSType Type')

  vim.cmd('hi link TSFunction Function')
  vim.cmd('hi link TSFuncMacro Macro')
  vim.cmd('hi link TSKeyword Keyword')
  vim.cmd('hi link TSKeywordFunction Keyword')
  vim.cmd('hi link TSKeywordOperator Operator')
  vim.cmd('hi link TSLabel Label')
  vim.cmd('hi link TSOperator Operator')
  vim.cmd('hi link TSPunctSpecial Special')
  vim.cmd('hi link TSStructure Structure')
  vim.cmd('hi link TSTag Tag')

  vim.cmd('hi link TSBoolean Boolean')
  vim.cmd('hi link TSConstant Constant')
  vim.cmd('hi link TSFloat Float')
  vim.cmd('hi link TSString String')
  vim.cmd('hi link TSNumber Number')
  set_highlight('TSStringRegex', colors.cyan2)
  set_highlight('TSVariable', colors.blue2)
  set_highlight('TSVariableBuiltin', colors.blue2)

  vim.cmd('hi link TSError ErrorMsg')
  vim.cmd('hi link TSException Exception')

  -- ― ― ― ― ― ― ― ― ―
  -- VIM
  -- ― ― ― ― ― ― ― ― ―
  set_highlight('vimMapRhs', colors.blue2)
  set_highlight('vimNotation', colors.blue2)
  vim.cmd('hi link vimFunction Function')
  vim.cmd('hi link vimUserFunc Function')

  -- ― ― ― ― ― ― ― ― ―
  -- VIM ALE
  -- https.//github.com/dense-analysis/ale
  -- ― ― ― ― ― ― ― ― ―
  set_highlight('AleError', colors.red)
  set_highlight('AleErrorSign', colors.red2)

  set_highlight('AleInfo', colors.purple)
  set_highlight('AleInfoSign', colors.purple2)

  set_highlight('AleWarning', colors.orange)
  set_highlight('AleWarningSign', colors.orange2)

  -- ― ― ― ― ― ― ― ― ―
  -- VIM COC
  -- https.//github.com/neoclide/coc.nvim
  -- ― ― ― ― ― ― ― ― ―
  set_highlight('CocInfoHighlight', colors.purple2)
  set_highlight('CocErrorHighlight', colors.red2)
  set_highlight('CocWarningHighlight', colors.orange2)

  set_highlight('CocErrorSign', colors.red)
  set_highlight('CocHintSign', colors.fg_alt)
  set_highlight('CocInfoSign', colors.purple)
  set_highlight('CocWarningSign', colors.orange)

  set_highlight('CocGitAddedSign', colors.green)
  set_highlight('CocGitChangedSign', colors.hl_yellow)
  set_highlight('CocGitChangeRemovedSign', colors.red)
  set_highlight('CocGitRemovedSign', colors.red)

  -- ― ― ― ― ― ― ― ― ―
  -- VIM FUGITIVE
  -- https.//github.com/tpope/vim-fugitive
  -- ― ― ― ― ― ― ― ― ―
  vim.cmd('hi link diffAdded DiffAdd')
  vim.cmd('hi link diffChanged DiffChange')
  vim.cmd('hi link diffRemoved DiffDelete')

  -- ― ― ― ― ― ― ― ― ―
  -- VIM GIT GUTTER
  -- https.//github.com/airblade/vim-gitgutter
  -- ― ― ― ― ― ― ― ― ―
  set_highlight('GitGutterAdd', colors.green)
  set_highlight('GitGutterDelete', colors.red)
  set_highlight('GitGutterChange', colors.hl_yellow)
  set_highlight('GitGutterChangeDelete', colors.red)

  -- ― ― ― ― ― ― ― ― ―
  -- VIM INDENT GUIDES
  -- https.//github.com/nathanaelkane/vim-indent-guides
  -- ― ― ― ― ― ― ― ― ―
  set_highlight('IndentGuidesEven', colors.white)
  set_highlight('IndentGuidesOdd', colors.white2)

  -- ― ― ― ― ― ― ― ― ―
  -- VIM PLUG
  -- https.//github.com/junegunn/vim-plug
  -- ― ― ― ― ― ― ― ― ―
  set_highlight('plugInstall', colors.green)
  set_highlight('plugClean', colors.blue)
  set_highlight('plugDeleted', colors.red)

  -- ― ― ― ― ― ― ― ― ―
  -- VIM SIGNATURE
  -- https.//github.com/kshenoy/vim-signature
  -- ― ― ― ― ― ― ― ― ―
  set_highlight('SignatureMarkText', colors.hl_orange)

  -- ― ― ― ― ― ― ― ― ―
  -- VIM SIGNIFY
  -- https.//github.com/mhinz/vim-signify
  -- ― ― ― ― ― ― ― ― ―
  vim.cmd('hi link SignifySignAdd GitGutterAdd')
  vim.cmd('hi link SignifySignChange GitGutterChange')
  vim.cmd('hi link SignifySignDelete GitGutterDelete')

  -- ― ― ― ― ― ― ― ― ―
  -- VIM STARTIFY
  -- https.//github.com/mhinz/vim-startify
  -- ― ― ― ― ― ― ― ― ―
  set_highlight('StartifyBracket', colors.grey)
  set_highlight('StartifyFile', colors.green2)
  set_highlight('StartifyFooter', colors.grey)
  set_highlight('StartifyHeader', colors.cyan2)
  set_highlight('StartifyNumber', colors.purple)
  set_highlight('StartifyPath', colors.white2, bg)
  set_highlight('StartifySection', colors.blue2)
  set_highlight('StartifySelect', bg, colors.hl_yellow)
  set_highlight('StartifySlash', colors.white2)
  set_highlight('StartifySpecial', colors.hl_orange)

  -- ― ― ― ― ― ― ― ― ―
  -- VIMTEX
  -- vimtex: https.//github.com/lervag/vimtex
  -- ― ― ― ― ― ― ― ― ―
  set_highlight('texCmd', colors.cyan2)
  set_highlight('texCmdAuthor', colors.fg_alt, formats.bold)
  set_highlight('texCmdClass', colors.hl_yellow)
  set_highlight('texCmdTitle', colors.fg_alt, formats.bold)
  set_highlight('texCmdDef', colors.purple)
  set_highlight('texCmdEnv', colors.purple)
  set_highlight('texCmdPart', colors.purple)
  set_highlight('texDefArgName', colors.orange2)
  set_highlight('texEnvArgName', colors.green2)
  set_highlight('texFileArg', colors.blue2)
  set_highlight('texMathEnvArgName', colors.green2)

  -- ― ― ― ― ― ― ― ― ―
  -- VIMWIKI
  -- https.//github.com/vimwiki/vimwiki
  -- ― ― ― ― ― ― ― ― ―
  set_highlight('VimwikiHeader1', colors.hl_yellow, formats.bold)
  set_highlight('VimwikiHeader2', colors.green, formats.bold)
  set_highlight('VimwikiHeader3', colors.orange2, formats.bold)
  set_highlight('VimwikiHeader4', colors.purple, formats.bold)
  set_highlight('VimwikiHeader5', colors.cyan, formats.bold)
  set_highlight('VimwikiHeader6', colors.white, formats.bold)

  -- ― ― ― ― ― ― ― ― ―
  -- NEOVIM COLOR BUFFER
  -- ― ― ― ― ― ― ― ― ―
  vim.g.terminal_color_0 = colors.black.gui
  vim.g.terminal_color_1 = colors.red.gui
  vim.g.terminal_color_2 = colors.green.gui
  vim.g.terminal_color_3 = colors.orange.gui
  vim.g.terminal_color_4 = colors.blue.gui
  vim.g.terminal_color_5 = colors.purple.gui
  vim.g.terminal_color_6 = colors.cyan.gui
  vim.g.terminal_color_7 = colors.white.gui
  vim.g.terminal_color_8 = colors.grey.gui
  vim.g.terminal_color_9 = colors.red2.gui
  vim.g.terminal_color_10 = colors.green2.gui
  vim.g.terminal_color_11 = colors.orange2.gui
  vim.g.terminal_color_12 = colors.blue2.gui
  vim.g.terminal_color_13 = colors.purple2.gui
  vim.g.terminal_color_14 = colors.cyan2.gui
  vim.g.terminal_color_15 = colors.white2.gui
  vim.g.terminal_color_background = bg.gui
  vim.g.terminal_color_foreground = colors.fg.gui
end

return M
