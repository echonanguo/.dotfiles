-- 开始界面
return {
  "goolord/alpha-nvim",
  opts = function(_, opts)
    -- customize the dashboard header
    opts.section.header.val = {
      "░░░░░░░█▐▓▓░████▄▄▄█▀▄▓▓▓▌█",
      "░░░░░▄█▌▀▄▓▓▄▄▄▄▀▀▀▄▓▓▓▓▓▌█",
      "░░░▄█▀▀▄▓█▓▓▓▓▓▓▓▓▓▓▓▀░▓▌█",
      "░░█▀▄▓▓▓███▓▓▓███▓▓▓▄░░▄▓▐█▌",
      "░█▌▓▓▓▀▀▓▓▓▓███▓▓▓▓▓▓▓▄▀▓▓▐█",
      "▐█▐██▐░▄▓▓▓▓▓▀▄░▀▓▓▓▓▓▓▓▓▓▌█▌",
      "█▌███▓▓▓▓▓▓▓▓▐░░▄▓▓███▓▓▓▄▀▐█",
      "█▐█▓▀░░▀▓▓▓▓▓▓▓▓▓██████▓▓▓▓▐█",
      "▌▓▄▌▀░▀░▐▀█▄▓▓██████████▓▓▓▌█▌",
      "▌▓▓▓▄▄▀▀▓▓▓▀▓▓▓▓▓▓▓▓█▓█▓█▓▓▌█▌",
      "█▐▓▓▓▓▓▓▄▄▄▓▓▓▓▓▓█▓█▓█▓█▓▓▓▐█",
    }

    local dashboard = require "alpha.themes.dashboard"
    dashboard.config.layout = {
      { type = "padding", val = 2 },
      dashboard.section.header,
      { type = "padding", val = 1 },
      dashboard.section.buttons,
      { type = "padding", val = 1 },
      dashboard.section.footer,
    }

    return opts
  end,
}
