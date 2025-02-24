local M = {}

---@param opts colo.Config
function M.setup(opts)
    opts = require("colo.config").extend(opts)

    local colors = require("colo.colors").setup(opts)
    local groups = require("colo.groups").setup(colors, opts)

    if vim.g.colors_name then
        vim.cmd("hi clear")
    end

    vim.o.termguicolors = true
    vim.g.colors_name = "colo-theme"

    for group, hl in pairs(groups) do
        if type(hl) == "string" then
            vim.api.nvim_set_hl(0, group, { link = hl })
        else
            vim.api.nvim_set_hl(0, group, hl)
        end
    end

    if opts.terminal_colors then
        M.terminal(colors)
    end

    return colors, groups, opts
end

---@param colors ColorScheme
function M.terminal(colors)
    -- dark
  vim.g.terminal_color_0 = colors.black
  vim.g.terminal_color_8 = colors.black_alt

  -- light
  vim.g.terminal_color_7 = colors.white
  vim.g.terminal_color_15 = colors.white

  -- colors
  vim.g.terminal_color_1 = colors.red
  vim.g.terminal_color_9 = colors.red_alt

  vim.g.terminal_color_2 = colors.green
  vim.g.terminal_color_10 = colors.green_alt

  vim.g.terminal_color_3 = colors.yellow
  vim.g.terminal_color_11 = colors.yellow_alt

  vim.g.terminal_color_4 = colors.blue
  vim.g.terminal_color_12 = colors.blue_alt

  vim.g.terminal_color_5 = colors.magenta
  vim.g.terminal_color_13 = colors.magenta_alt

  vim.g.terminal_color_6 = colors.cyan
  vim.g.terminal_color_14 = colors.cyan_alt
end

return M
