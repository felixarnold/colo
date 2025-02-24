---@class colo.Highlight: vim.api.keyset.highlight

---@alias colo.Highlights table<string, colo.Highlight | string>

---@alias colo.HighlightsFn fun(colors: ColorScheme, opts: colo.Config): colo.Highlights

---@alias colo.Plugins table<string, table<string, colo.Highlight | string>>

---@alias colo.ColorOverwrites colo.Palette

---@alias Color string

---@class colo.Palette
---@field fg Color
---@field bg Color
---@field black Color
---@field black_alt Color
---@field red Color
---@field red_alt Color
---@field bg_red Color
---@field green Color
---@field green_alt Color
---@field bg_green Color
---@field yellow Color
---@field yellow_alt Color
---@field bg_yellow Color
---@field blue Color
---@field blue_alt Color
---@field bg_blue Color
---@field magenta Color
---@field magenta_alt Color
---@field bg_magenta Color
---@field cyan Color
---@field cyan_alt Color
---@field bg_cyan Color
---@field white Color
---@field grey0 Color
---@field grey1 Color
---@field grey2 Color
---@field grey3 Color
---@field grey4 Color
---@field grey5 Color
---@field grey6 Color
---@field string Color
---@field comment Color
