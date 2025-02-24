local config = require("colo.config")

local M = {}

---@param opts colo.Config
function M.load(opts)
    opts = require("colo.config").extend(opts)

    return require("colo.theme").setup(opts)
end

M.setup = config.setup

return M
