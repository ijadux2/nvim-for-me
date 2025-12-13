return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      dashboard = {
        enabled = true,
        preset = {
          header = [[
 ▐ ▄ ▄▄▄ .       ▌ ▐·▪  • ▌ ▄ ·. 
•█▌▐█▀▄.▀·▪     ▪█·█▌██ ·██ ▐███▪
▐█▐▐▌▐▀▀▪▄ ▄█▀▄ ▐█▐█•▐█·▐█ ▌▐▌▐█·
██▐█▌▐█▄▄▌▐█▌.▐▌ ███ ▐█▌██ ██▌▐█▌
▀▀ █▪ ▀▀▀  ▀█▄▀▪. ▀  ▀▀▀▀▀  █▪▀▀▀
-- ijadux2
]],
          keys = {
            { icon = " ", key = "n", desc = "New file", action = ":ene | startinsert" },
            {
              icon = "󰈞 ",
              key = "f",
              desc = "Find file",
              action = ":lua Snacks.dashboard.pick('files')",
            },
            {
              icon = " ",
              key = "r",
              desc = "Recent files",
              action = ":lua Snacks.dashboard.pick('oldfiles')",
            },
            { icon = " ", key = "s", desc = "Settings", action = ":e $MYVIMRC" },
            { icon = "󰅚 ", key = "q", desc = "Quit", action = ":qa" },
            { icon = " ", key = "l", desc = "lazy", action = ":Lazy" },
          },
        },
        sections = {
          { section = "header" },
          { section = "keys", gap = 1, padding = 1 },
          { section = "startup" },
        },
        animate = {
          enabled = true,
          fps = 30,
          easing = "outCubic",
        },
      },
      picker = {
        enabled = true,
      },
      notifier = {
        enabled = true,
        timeout = 3000,
        style = "fancy",
        icons = {
          error = "",
          warn = "",
          info = "",
          debug = "",
          trace = "",
        },
        top_down = false,
      },
    },
  },
}
