local M = {}

---@class colo.Config
M.defaults = {
    ---@type boolean
    terminal_colors = true,

    ---@type fun(colors: ColorScheme): ColorScheme | nil
    modify_colors = nil,

    ---@type fun(highlights: colo.Highlights, colors: ColorScheme): colo.Highlights | nil
    modify_highlights = nil,
}

---@type colo.Config
M.options = nil

---@param options? colo.Config
function M.setup(options)
    M.options = vim.tbl_deep_extend('force', {}, M.defaults, options or {})
end

---@param opts? colo.Config
function M.extend(opts)
    return opts and vim.tbl_deep_extend('force', {}, M.options, opts) or M.options
end

setmetatable(M, {
    __index = function(_, k)
        if k == "options" then
            return M.defaults
        end
    end,
})

return M
