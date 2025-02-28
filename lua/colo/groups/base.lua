local M = {}

---@type colo.HighlightsFn
function M.get(c, opts)
    return {
        Comment = { fg = c.comment },        -- any comment
        ColorColumn = { bg = c.grey0 },      -- used for the columns set with 'colorcolumn'
        Conceal = {},                        -- placeholder characters substituted for concealed text (see 'conceallevel')
        Cursor = { fg = c.bg, bg = c.fg },   -- character under the cursor
        lCursor = { fg = c.bg, bg = c.fg },  -- the character under the cursor when |language-mapping| is used (see 'guicursor')
        CursorIM = { fg = c.bg, bg = c.fg }, -- like Cursor, but used when in IME mode |CursorIM|
        CursorColumn = { bg = c.grey1 },     -- Screen-column at the cursor, when 'cursorcolumn' is set.
        CursorLine = { bg = c.grey0n },      -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
        Directory = { fg = c.blue },         -- directory names (and other special names in listings)
        Added = { fg = c.green },
        Changed = { fg = c.cyan},
        Removed = {},

        DiffAdd = "Added",
        DiffChange = "Changed",
        DiffDelete = "Removed",
        DiffText = { fg = c.cyan, bg = c.bg_cyan }, -- diff mode: Changed text within a changed line |diff.txt|
        EndOfBuffer = { fg = c.magenta },               -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
        ErrorMsg = { fg = c.bg, bg = c.red },           -- error messages on the command line
        VertSplit = { fg = c.fg },                      -- the column separating vertically split windows
        WinSeparator = { fg = c.fg, bold = true },      -- the column separating vertically split windows
        Folded = { fg = c.grey7, bg = c.grey2 },        -- line used for closed folds
        FoldColumn = {},                                -- 'foldcolumn'
        SignColumn = {},                                -- column where |signs| are displayed
        SignColumnSB = { bg = "#ff00ff" },              -- column where |signs| are displayed
        Substitute = { bg = c.bg_blue, fg = c.blue },   -- |:substitute| replacement text highlighting
        LineNr = { fg = c.grey4 },                      -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
        CursorLineNr = { fg = c.grey5 },                -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
        LineNrAbove = { fg = c.grey4 },
        LineNrBelow = { fg = c.grey4 },
        MatchParen = { bg = c.bg_blue, fg = c.blue },    -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
        ModeMsg = {},                                    -- 'showmode' message (e.g., "-- INSERT -- ")
        MsgArea = { bg = c.grey0n },                     -- Area for messages and cmdline
        MoreMsg = { fg = c.blue, bold = true },          -- |more-prompt|
        NonText = { fg = c.magenta },                    -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
        Normal = { fg = c.fg, bg = c.bg },               -- normal text
        NormalNC = { fg = c.grey5 },                     -- normal text in non-current windows
        -- NormalSB = { fg = c.fg_sidebar, bg = c.bg_sidebar }, -- normal text in sidebar
        NormalFloat = { bg = c.grey0 },                  -- Normal text in floating windows.
        FloatBorder = { bg = c.grey0 },                  --
        FloatTitle = { bg = c.grey0 },                   --
        Pmenu = { bg = c.grey0 },                        -- Popup menu: normal item.
        PmenuMatch = { bg = c.grey0, fg = c.blue },      -- Popup menu: Matched text in normal item.
        PmenuSel = { bg = c.fg, fg = c.bg },             -- Popup menu: selected item.
        PmenuMatchSel = { bg = c.fg, fg = c.bg_blue },   -- Popup menu: Matched text in selected item.
        PmenuSbar = { bg = c.grey0 },                    -- Popup menu: scrollbar.
        PmenuThumb = { bg = c.grey3 },                   -- Popup menu: Thumb of the scrollbar.
        Question = {},                                   -- |hit-enter| prompt and yes/no questions
        QuickFixLine = {},                               -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
        Search = { bg = c.yellow, fg = c.bg },           -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
        IncSearch = { bg = c.blue, fg = c.bg },          -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
        CurSearch = "IncSearch",
        SpecialKey = { bg = c.magenta, fg = c.bg },      -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
        SpellBad = { sp = c.red, undercurl = true },     -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
        SpellCap = { sp = c.yellow, undercurl = true },  -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
        SpellLocal = { sp = c.blue, undercurl = true },  -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
        SpellRare = { sp = c.green, undercurl = true },  -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
        StatusLine = { fg = c.grey6, bg = c.grey0 },     -- status line of current window
        StatusLineNC = { fg = c.grey4, bg = c.bg },      -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
        TabLine = { fg = c.grey5 },                      -- tab pages line, not active tab page label
        TabLineFill = { fg = c.grey5 },                  -- tab pages line, where there are no labels
        TabLineSel = { fg = c.grey6, bold = true },      -- tab pages line, active tab page label
        Title = { bold = true },                         -- titles for output from ":set all", ":autocmd" etc.
        Visual = { bg = c.bg_blue },                     -- Visual mode selection
        VisualNOS = { bg = c.bg_blue, fg = c.blue_alt }, -- Visual mode selection when vim is "Not Owning the Selection".
        WarningMsg = { fg = c.yellow },                  -- warning messages
        Whitespace = { fg = c.grey3 },                   -- "nbsp", "space", "tab" and "trail" in 'listchars'
        WildMenu = { fg = c.fg },                        -- current match in 'wildmenu' completion
        WinBar = "StatusLine",                           -- window bar
        WinBarNC = "StatusLineNC",                       -- window bar in inactive windows

        Bold = { bold = true },                          -- (preferred) any bold text
        Character = {},                                  --  a character constant: 'c', '\n'
        Constant = { sp = c.fg, underline = true },      -- (preferred) any constant
        Boolean = { italic = true },
        Number = { fg = c.cyan_alt },
        Float = "Number",
        Debug = {},                              --    debugging statements
        Delimiter = "Special",                   --  character that needs attention
        Error = { fg = c.red },                  -- (preferred) any erroneous construct
        Function = { bold = true },              -- function name (also: methods for classes)
        Identifier = {},                         -- (preferred) any variable name
        Italic = { italic = true },              -- (preferred) any italic text
        Keyword = { fg = c.grey4, bold = true }, --  any other keyword
        Operator = { fg = c.grey5 },             -- "sizeof", "+", "*", etc.
        PreProc = { fg = c.grey6 },              -- (preferred) generic Preprocessor
        Special = { fg = c.magenta },            -- (preferred) any special symbol
        Statement = { bold = true },             -- (preferred) any statement
        String = { fg = c.string },              --   a string constant: "this is a string"
        Todo = { bg = c.yellow, fg = c.grey0n }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
        Type = { fg = c.magenta_alt },           -- (preferred) int, long, char, etc.
        Underlined = { underline = true },       -- (preferred) text that stands out, HTML links
        htmlH1 = { fg = c.magenta_alt },
        htmlH2 = { fg = c.blue_alt },
        -- qfFileName = { fg = c.blue },
        -- qfLineNr = { fg = c.dark5 },

        -- These groups are for the native LSP client. Some other LSP clients may
        -- use these groups, or use their own.
        LspReferenceText = { sp = c.blue, underdotted = true },   -- used for highlighting "text" references
        LspReferenceRead = { sp = c.fg, underdotted = true },     -- used for highlighting "read" references
        LspReferenceWrite = { sp = c.green, underdotted = true }, -- used for highlighting "write" references
        LspSignatureActiveParameter = "Visual",
        LspCodeLens = {},
        LspInlayHint = {},
        LspInfoBorder = { bg = "#ff00ff" },

        -- diagnostics
        DiagnosticOk = { fg = c.green },
        DiagnosticError = { fg = c.red },   -- Used as the base highlight group. Other Diagnostic highlights link to this by default
        DiagnosticWarn = { fg = c.yellow }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
        DiagnosticInfo = { fg = c.blue },   -- Used as the base highlight group. Other Diagnostic highlights link to this by default
        DiagnosticHint = { fg = c.green },  -- Used as the base highlight group. Other Diagnostic highlights link to this by default
        -- DiagnosticUnnecessary = { fg = c.terminal_black }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
        -- DiagnosticVirtualTextError = { bg = Util.blend_bg(c.error, 0.1), fg = c.error }, -- Used for "Error" diagnostic virtual text
        -- DiagnosticVirtualTextWarn = { bg = Util.blend_bg(c.warning, 0.1), fg = c.warning }, -- Used for "Warning" diagnostic virtual text
        -- DiagnosticVirtualTextInfo = { bg = Util.blend_bg(c.info, 0.1), fg = c.info }, -- Used for "Information" diagnostic virtual text
        -- DiagnosticVirtualTextHint = { bg = Util.blend_bg(c.hint, 0.1), fg = c.hint }, -- Used for "Hint" diagnostic virtual text
        DiagnosticUnderlineError = { undercurl = true, sp = c.red },   -- Used to underline "Error" diagnostics
        DiagnosticUnderlineWarn = { undercurl = true, sp = c.yellow }, -- Used to underline "Warning" diagnostics
        DiagnosticUnderlineInfo = { undercurl = true, sp = c.blue },   -- Used to underline "Information" diagnostics
        DiagnosticUnderlineHint = { undercurl = true, sp = c.green },  -- Used to underline "Hint" diagnostics

        -- Health
        healthError = { fg = c.red },
        healthSuccess = { fg = c.green },
        healthWarning = { fg = c.yellow },
    }
end

return M
