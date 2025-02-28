local M = {}

---@param opts colo.Config
function M.setup(opts)
    opts = require("colo.config").extend(opts)

    ---@class ColorScheme: colo.Palette
    local colors = {
        fg = '#efeff4',
        bg = '#1a1a1f',
        black = '#292929',
        black_alt = '#4b4b52',
        red = '#f28d79',
        red_alt = '#f2c0b5',
        bg_red = '#3c2228',
        green = '#d0f086',
        green_alt = '#e1f1bb',
        bg_green = '#2f3422',
        yellow = '#ffde7a',
        yellow_alt = '#f9e8b6',
        bg_yellow = '#473030',
        blue = '#7eddf2',
        blue_alt = '#b8e8f2',
        bg_blue = '#2b3b42',
        magenta = '#c894f2',
        magenta_alt = '#ddc2f2',
        bg_magenta = '#2e2533',
        cyan = '#86e6c6',
        cyan_alt = '#bbecdc',
        bg_cyan = '#24332e',
        white = '#e1e1eb',
        grey0n = '#05050a',
        grey0 = '#2e2e33',
        grey1 = '#434348',
        grey2 = '#59595e',
        grey3 = '#707076',
        grey4 = '#88888e',
        grey5 = '#a1a1a6',
        grey6 = '#bbbbc0',
        grey7 = '#d5d5da',
        ['string'] = '#afcce2',
        comment = '#606878',
    }

    if opts.modify_colors then
        colors = opts.modify_colors(colors) or colors
    end

    return colors
end

return M
