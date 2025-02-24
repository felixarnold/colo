local M = {}

---@param colors ColorScheme
---@param opts colo.Config
---@return colo.Highlights
function M.setup(colors, opts)
    local ret = {}
    local base = require("colo.groups.base").get(colors, opts)
    local kinds = require("colo.groups.kinds").get(colors, opts)
    local ts = require("colo.groups.treesitter").get(colors, opts)

    for k, v in pairs(base) do
        ret[k] = v
    end
    for k, v in pairs(kinds) do
        ret[k] = v
    end
    for k, v in pairs(ts) do
        ret[k] = v
    end

    if opts.modify_highlights then
        ret = opts.modify_highlights(ret, colors) or ret
    end

    return ret
end

return M
