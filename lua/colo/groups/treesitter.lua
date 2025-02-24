local M = {}

---@type colo.HighlightsFn
function M.get(c, opts)
    local ret = {
        ["@annotation"]                   = "PreProc",
        ["@attribute"]                    = "PreProc",
        ["@boolean"]                      = "Boolean",
        ["@character"]                    = "Character",
        ["@character.printf"]             = "SpecialChar",
        ["@character.special"]            = "SpecialChar",
        ["@comment"]                      = "Comment",
        ["@comment.error"]                = { fg = c.red },
        ["@comment.hint"]                 = { fg = c.green },
        ["@comment.info"]                 = { fg = c.blue },
        ["@comment.note"]                 = { fg = c.green },
        ["@comment.todo"]                 = { fg = c.yellow },
        ["@comment.warning"]              = { fg = c.yellow },
        ["@constant"]                     = "Constant",
        ["@constant.builtin"]             = "Special",
        ["@constant.macro"]               = "Define",
        ["@constructor"]                  = { fg = c.magenta_alt }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
        ["@diff.delta"]                   = "DiffChange",
        ["@diff.minus"]                   = "DiffDelete",
        ["@diff.plus"]                    = "DiffAdd",
        ["@function"]                     = "Function",
        ["@function.builtin"]             = "Special",
        ["@function.call"]                = "@function",
        ["@function.macro"]               = "Macro",
        ["@function.method"]              = "Function",
        ["@function.method.call"]         = "@function.method",
        ["@keyword"]                      = "Keyword", -- For keywords that don't fall in previous categories.
        ["@keyword.conditional"]          = "Conditional",
        ["@keyword.coroutine"]            = "@keyword",
        ["@keyword.debug"]                = "Debug",
        ["@keyword.directive"]            = "PreProc",
        ["@keyword.directive.define"]     = "Define",
        ["@keyword.exception"]            = "Exception",
        ["@keyword.function"]             = "Function", -- For keywords used to define a function.
        ["@keyword.import"]               = "Include",
        ["@keyword.operator"]             = "@operator",
        ["@keyword.repeat"]               = "Repeat",
        ["@keyword.return"]               = "@keyword",
        ["@keyword.storage"]              = "StorageClass",
        ["@label"]                        = { fg = c.cyan }, -- For labels: `label:` in C and `:label:` in Lua.
        ["@markup"]                       = "@none",
        ["@markup.emphasis"]              = { italic = true },
        ["@markup.environment"]           = "Macro",
        ["@markup.environment.name"]      = "Type",
        ["@markup.heading"]               = "Title",
        ["@markup.italic"]                = { italic = true },
        ["@markup.link"]                  = { fg = c.cyan },
        ["@markup.link.label"]            = "SpecialChar",
        ["@markup.link.label.symbol"]     = "Identifier",
        ["@markup.link.url"]              = "Underlined",
        ["@markup.list"]                  = { fg = c.blue }, -- For special punctutation that does not fall in the categories before.
        ["@markup.list.checked"]          = { fg = c.green }, -- For brackets and parens.
        ["@markup.list.markdown"]         = { fg = c.grey4, bold = true },
        ["@markup.list.unchecked"]        = { fg = c.blue }, -- For brackets and parens.
        ["@markup.math"]                  = "Special",
        ["@markup.raw"]                   = "String",
        ["@markup.raw.markdown_inline"]   = { bg = c.grey0n, fg = c.blue },
        ["@markup.strikethrough"]         = { strikethrough = true },
        ["@markup.strong"]                = { bold = true },
        ["@markup.underline"]             = { underline = true },
        ["@module"]                       = "Directory",
        ["@module.builtin"]               = { fg = c.red }, -- Variable names that are defined by the languages, like `this` or `self`.
        ["@namespace.builtin"]            = "@variable.builtin",
        ["@none"]                         = {},
        ["@number"]                       = "Number",
        ["@number.float"]                 = "Float",
        ["@operator"]                     = "Operator",  -- For any operator: `+`, but also `->` and `*` in C.
        -- ["@property"]                     = { fg = c.green1 },
        ["@punctuation.bracket"]          = { fg = c.grey3 }, -- For brackets and parens.
        ["@punctuation.delimiter"]        = { fg = c.grey4 },  -- For delimiters ie: `.`
        ["@punctuation.special"]          = { fg = c.grey4 },  -- For special symbols (e.g. `{}` in string interpolation)
        ["@punctuation.special.markdown"] = { fg = c.yellow }, -- For special symbols (e.g. `{}` in string interpolation)
        ["@string"]                       = "String",
        ["@string.documentation"]         = { fg = c.yellow },
        ["@string.escape"]                = { fg = c.magenta }, -- For escape characters within a string.
        ["@string.regexp"]                = { fg = c.blue_alt }, -- For regexes.
        ["@tag"]                          = "Label",
        ["@tag.attribute"]                = "@property",
        ["@tag.delimiter"]                = "Delimiter",
        ["@type"]                         = "Type",
        ["@type.definition"]              = "Typedef",
        ["@type.qualifier"]               = "@keyword",
        ["@variable"]                     = { fg = c.fg }, -- Any variable name that does not have another highlight.
        ["@variable.builtin"]             = { fg = c.blue_alt },                             -- Variable names that are defined by the languages, like `this` or `self`.
        ["@variable.member"]              = { fg = c.grey7 },                          -- For fields.
        ["@variable.parameter"]           = { fg = c.green_alt },                          -- For parameters of a function.
        -- ["@variable.parameter.builtin"]   = { fg = Util.blend_fg(c.yellow, 0.8) },      -- For builtin parameters of a function, e.g. "..." or Smali's p[1-99]
    }

    -- for i, color in ipairs(c.rainbow) do
    --     ret["@markup.heading." .. i .. ".markdown"] = { fg = color, bold = true }
    -- end
    return ret
end

return M
