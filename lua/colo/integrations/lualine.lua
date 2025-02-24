local c = require('colo.colors').setup({})

return {
    normal = {
        a = { fg = c.fg, bg = c.grey0 },
        b = { fg = c.grey6, bg = c.grey0 },
        c = { fg = c.grey6, bg = c.bg },
        z = { fg = c.grey6, bg = c.grey0 },
    },

    insert = {
        a = { fg = c.bg, bg = c.fg },
        z = { fg = c.grey6, bg = c.grey0 },
    },

    visual = {
        a = { fg = c.bg, bg = c.blue },
        z = { fg = c.grey6, bg = c.grey0 },
    },

    replace = {
        a = { fg = c.bg, bg = c.red, },
        z = { fg = c.grey6, bg = c.grey0 },
    },

    command = {
        a = { fg = c.bg, bg = c.yellow },
        z = { fg = c.grey6, bg = c.grey0 },
    },
    inactive = {
        a = { fg = c.grey4, bg = c.bg },
        b = { fg = c.grey4, bg = c.bg },
        c = { fg = c.grey4 },
    }
}
