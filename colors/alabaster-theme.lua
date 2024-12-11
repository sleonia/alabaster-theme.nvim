-- https://github.com/tonsky/vscode-theme-alabaster/blob/master/theme/alabaster-color-theme.json

local token_colors = {
  ["Comments"] = "#AA3731",
  ["Global definitions"] = {
    ["background"] = "#325CC0",
  },
  ["Punctuation"] = {
    ["foreground"] = "#777777",
  },
}

local colors = {
  ["editor.background"] = "#F7F7F7",

  ["editor.lineHighlightBackground"] = "#F0F0F0",
  ["editor.selectionBackground"] = "#BFDBFE",
  ["editorLineNumber.foreground"] = "#9DA39A",
  ["editor.findMatchBackground"] = "#FFBC5D",

  ["terminal.ansiGreen"] = "#448C27",
  ["terminal.ansiBlack"] = "#000",
  ["terminal.ansiMagenta"] = "#7A3E9D",
}

local mapping = {
  Comment = { fg = token_colors["Comments"] }, -- any comment
  ColorColumn = { bg = colors["terminal.ansiBlack"] }, -- used for the columns set with 'colorcolumn'
  -- Conceal = {}, -- placeholder characters substituted for concealed text (see 'conceallevel')
  -- Cursor = {}, -- character under the cursor
  -- lCursor = {}, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
  -- CursorIM = {}, -- like Cursor, but used when in IME mode |CursorIM|
  -- CursorColumn = {}, -- Screen-column at the cursor, when 'cursorcolumn' is set.
  CursorLine = { bg = colors["editor.lineHighlightBackground"] }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
  -- Directory = {}, -- directory names (and other special names in listings)
  -- DiffAdd = {}, -- diff mode: Added line |diff.txt|
  -- DiffChange = {}, -- diff mode: Changed line |diff.txt|
  -- DiffDelete = {}, -- diff mode: Deleted line |diff.txt|
  -- DiffText = {}, -- diff mode: Changed text within a changed line |diff.txt|
  -- EndOfBuffer = {}, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
  -- ErrorMsg = {}, -- error messages on the command line
  -- VertSplit = {}, -- the column separating vertically split windows
  -- WinSeparator = {}, -- the column separating vertically split windows
  -- Folded = {}, -- line used for closed folds
  -- FoldColumn = {}, -- 'foldcolumn'
  -- SignColumn = {}, -- column where |signs| are displayed
  -- SignColumnSB = {}, -- column where |signs| are displayed
  -- Substitute = {}, -- |:substitute| replacement text highlighting
  LineNr = { fg = colors["editorLineNumber.foreground"] }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
  -- CursorLineNr = {}, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
  -- LineNrAbove = {},
  -- LineNrBelow = {},
  -- MatchParen = {}, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
  -- ModeMsg = {}, -- 'showmode' message (e.g., "-- INSERT -- ")
  -- MsgArea = {}, -- Area for messages and cmdline
  -- MoreMsg = {}, -- |more-prompt|
  -- NonText = {}, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
  Normal = { bg = colors["editor.background"] }, -- normal text
  -- NormalNC = {}, -- normal text in non-current windows
  -- NormalSB = {}, -- normal text in sidebar
  -- NormalFloat = {}, -- Normal text in floating windows.
  -- FloatBorder = {},
  -- FloatTitle = {},
  -- Pmenu = {}, -- Popup menu: normal item.
  -- PmenuMatch = {}, -- Popup menu: Matched text in normal item.
  -- PmenuSel = {}, -- Popup menu: selected item.
  -- PmenuMatchSel = {}, -- Popup menu: Matched text in selected item.
  -- PmenuSbar = {}, -- Popup menu: scrollbar.
  -- PmenuThumb = {}, -- Popup menu: Thumb of the scrollbar.
  -- Question = {}, -- |hit-enter| prompt and yes/no questions
  -- QuickFixLine = {}, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
  Search = { bg = colors["editor.findMatchBackground"] }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
  -- IncSearch = {}, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
  -- CurSearch = "IncSearch",
  -- SpecialKey = {}, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
  -- SpellBad = {}, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
  -- SpellCap = {}, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
  -- SpellLocal = {}, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
  -- SpellRare = {}, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
  -- StatusLine = {}, -- status line of current window
  -- StatusLineNC = {}, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
  -- TabLine = {}, -- tab pages line, not active tab page label
  -- TabLineFill = {}, -- tab pages line, where there are no labels
  -- TabLineSel = {}, -- tab pages line, active tab page label
  -- Title = {}, -- titles for output from ":set all", ":autocmd" etc.
  Visual = { bg = colors["editor.selectionBackground"] }, -- Visual mode selection
  -- VisualNOS = {}, -- Visual mode selection when vim is "Not Owning the Selection".
  -- WarningMsg = {}, -- warning messages
  -- Whitespace = {}, -- "nbsp", "space", "tab" and "trail" in 'listchars'
  -- WildMenu = {}, -- current match in 'wildmenu' completion
  -- WinBar = "StatusLine", -- window bar
  -- WinBarNC = "StatusLineNC", -- window bar in inactive windows
  --
  -- Bold = {}, -- (preferred) any bold text
  -- Character = {}, --  a character constant: 'c', '\n'
  Constant = { fg = colors["terminal.ansiMagenta"] }, -- (preferred) any constant
  -- Debug = {}, --    debugging statements
  -- Delimiter = "Special", --  character that needs attention
  -- Error = {}, -- (preferred) any erroneous construct
  Function = { fg = token_colors["Global definitions"]["background"] }, -- function name (also: methods for classes)
  Identifier = { fg = colors["terminal.ansiBlack"] }, -- (preferred) any variable name
  -- Italic = {}, -- (preferred) any italic text
  -- Keyword = {}, --  any other keyword
  -- Operator = {}, -- "sizeof", "+", "*", etc.
  -- PreProc = {}, -- (preferred) generic Preprocessor
  Special = { fg = colors["terminal.ansiBlack"] }, -- (preferred) any special symbol
  Statement = { style = "NONE" }, -- (preferred) any statement
  String = { fg = colors["terminal.ansiGreen"] }, --   a string constant: "this is a string"
  -- Todo = {}, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
  -- Type = {}, -- (preferred) int, long, char, etc.
  -- Underlined = { underline = true }, -- (preferred) text that stands out, HTML links
  -- debugBreakpoint = {}, -- used for breakpoint colors in terminal-debug
  -- debugPC = {}, -- used for highlighting the current line in terminal-debug
  -- dosIniLabel = "@property",
  -- helpCommand = {},
  -- htmlH1 = {},
  -- htmlH2 = {},
  htmlTag = { fg = token_colors["Punctuation"]["foreground"] },
  htmlTagName = { fg = token_colors["Global definitions"]["background"] },
  -- qfFileName = {},
  -- qfLineNr = {},
  --
  -- -- These groups are for the native LSP client. Some other LSP clients may
  -- -- use these groups, or use their own.
  -- LspReferenceText = {}, -- used for highlighting "text" references
  -- LspReferenceRead = {}, -- used for highlighting "read" references
  -- LspReferenceWrite = {}, -- used for highlighting "write" references
  -- LspSignatureActiveParameter = {},
  -- LspCodeLens = { fg = tokenColors["Comments"] },
  -- LspInlayHint = {},
  -- LspInfoBorder = {},
  --
  -- -- diagnostics
  -- DiagnosticError = {}, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
  -- DiagnosticWarn = {}, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
  -- DiagnosticInfo = {}, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
  -- DiagnosticHint = {}, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
  -- DiagnosticUnnecessary = {}, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
  -- DiagnosticVirtualTextError = {}, -- Used for "Error" diagnostic virtual text
  -- DiagnosticVirtualTextWarn = {}, -- Used for "Warning" diagnostic virtual text
  -- DiagnosticVirtualTextInfo = {}, -- Used for "Information" diagnostic virtual text
  -- DiagnosticVirtualTextHint = {}, -- Used for "Hint" diagnostic virtual text
  -- DiagnosticUnderlineError = {}, -- Used to underline "Error" diagnostics
  -- DiagnosticUnderlineWarn = {}, -- Used to underline "Warning" diagnostics
  -- DiagnosticUnderlineInfo = {}, -- Used to underline "Information" diagnostics
  -- DiagnosticUnderlineHint = {}, -- Used to underline "Hint" diagnostics

  -- Health
  -- healthError = {},
  -- healthSuccess = {},
  -- healthWarning = {},

  -- ["@lsp.type.parameter"] = { guifg = token_colors["Global definitions"] },
  -- ["@lsp.type.parameter"] = "@variable.parameter",
  ["@lsp.type.member"] = {
    fg = token_colors["Global definitions"]["background"],
  },
  ["@lsp.type.class.typescriptreact"] = {
    fg = token_colors["Global definitions"]["background"],
  },
}

local function hl(group, opts)
  local cmd = "hi " .. group
  if opts.fg then
    cmd = cmd .. " guifg=" .. opts.fg
  end
  if opts.bg then
    cmd = cmd .. " guibg=" .. opts.bg
  end
  if opts.style then
    cmd = cmd .. " gui=" .. opts.style
  end
  vim.cmd(cmd)
end

vim.cmd("hi clear")
vim.cmd("syntax reset")

vim.o.termguicolors = true
vim.g.colors_name = "alabaster"

for group, opts in pairs(mapping) do
  hl(group, opts)
end

-- Temporary solution

vim.cmd("hi link tsxTag Function")
vim.cmd("hi link typescriptAssign Operator")
vim.cmd("hi link typescriptBinaryOp Operator")
vim.cmd("hi link typescriptCastKeyword Keyword")
vim.cmd("hi link typescriptDocNotation Keyword")
vim.cmd("hi link typescriptDocParam Field")
vim.cmd("hi link typescriptDocTags Keyword")
vim.cmd("hi link typescriptExport Include")
vim.cmd("hi link typescriptImport Include")
vim.cmd("hi link typescriptInterfaceName TypeDef")
vim.cmd("hi link typescriptKeywordOp Operator")
vim.cmd("hi link typescriptMember Field")
vim.cmd("hi link typescriptObjectLabel Field")
vim.cmd("hi link typescriptTernary Operator")
vim.cmd("hi link typescriptVariable Type")
vim.cmd("hi link typescriptNumber Constant")

vim.cmd("hi! link typescriptAssign Punctuation")
vim.cmd("hi! link typescriptBraces Punctuation")
vim.cmd("hi! link typescriptEndColons Punctuation")
vim.cmd("hi! link typescriptObjectColon Punctuation")
vim.cmd("hi! link typescriptParens Punctuation")
vim.cmd("hi! link typescriptTypeAnnotation Punctuation")
