-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "jabuti",
  transparency = true,
}

M.ui = {
  nvdash = {
    load_on_startup = true,
    header = {
      "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠁⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠃⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠓⠒⠤⢤⣤⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      "⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⠀⣀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣷⣶⣶⣦⣭⣓⢟⢻⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      "⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣿⣿⣿⡟⠽⣿⡍⡇⠀⠉⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      "⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠉⠙⠛⠡⠀⠘⢟⠀⠀⠀⠀⠈⠉⠙⠘⠻⣿⠇⣿⣿",
      "⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⣲⣖⣒⢄⠻⣿",
      "⣿⣿⣿⣿⣿⣿⣿⡏⢃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⣿⣿⣿⣿⣷⣼",
      "⣿⣿⣿⣿⣿⣿⡏⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠙⠻⡟⠙⢿⣿⣿",
      "⣿⣿⣿⣿⣿⣿⡇⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠇⠀⠀⠈⠲⣿⣿⣿",
      "⣿⣿⣿⣿⣿⣿⡇⡇⠀⠀⠀⠀⠀⠒⢤⣀⡀⠀⠀⠀⠀⠈⠀⠀⠀⠀⣸⣿⣿⣿",
      "⣿⣿⣿⣿⣿⣿⡇⡇⠀⠀⠀⠀⠀⠀⠀⠈⠂⠌⡑⠄⠀⠀⠀⠀⢀⢊⣾⣿⣿⣿",
      "⣿⣿⣿⣿⣿⣿⡇⡿⢆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢈⣾⣿⣿⣿⣿",
      "⣿⣿⣿⣿⣿⣿⣇⡇⠈⢻⣦⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣴⣏⣿⣿⣿⣿⣿",
      "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
    },
    buttons = {
      { "  Find File", "Spc f f", "Telescope find_files" },
      { "  New File", "Spc f n", "enew" },
      { "󱥬 Projects", "Spc f p", "Telescope projects" },
      { "󱑒 Recent files", "Spc f o", "Telescope oldfiles" },
      { "󰊄 Find Text", "Spc f w", "Telescope live_grep" },
      { " Quit", ":q", ":q" },
    },
  },
  tabufline = {
    enabled = true,
    lazyload = true,
    order = { "treeOffset", "buffers", "tabs", "btns" },
    modules = nil,
  },
}

return M
