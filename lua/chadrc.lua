-- This file  needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
	theme = "palenight",
  transparency = true,

  statusline = {
    theme = "minimal",
    separator_style = "default",
  },

  nvdash = {
    load_on_startup = true,

    header = {
      "                                      ",
      "       ░░                  ░░         ",
      "       ░█░                ░▓░         ",
      "       ░█▒░     ░██▒     ░▓░░         ",
      "       ░▒░░░   ░█▒██▒    ▓░▒░         ",
      "       ░░ ░▒░ ░▒░ ░██▒  ░░░▒          ",
      "       ░█░░▒▓░░    ░██░░░ ░▒          ",
      "       ░█░ ░▒▓      ░▓░░  ▒▒          ",
      "        █▒ ▒█▒░      ░█░░ ▓░  ░       ",
      "       ░█▒▓▓░█▓░░▒▒▓██▓▓▒░█▒░░        ",
      "       ░█████▓██   ░█░ ░░░█░          ",
      "        ░░    ▓█▒  ▓▒    ░░           ",
      "              ░██▒░▓                  ",
      "               ░███░                  ",
      "                ░█▓                   ",
      "                                      ",
    },

    buttons = {
      { "  Start Working", "", "enew" },
      { "  Recent Files", "Spc f o", "Telescope oldfiles" },
      { "  Find File", "Spc f f", "Telescope find_files" },
      { "󰑑  Find Word", "Spc f w", "Telescope live_grep" },
      -- { "  Bookmarks", "Spc b m", "Telescope marks" },
      -- { "  Themes", "Spc t h", "Telescope themes" },
      { "  Mappings", "Spc n m", "NvCheatsheet" },
    },
  },

	hl_override = {
		Comment = { italic = true },
		["@comment"] = { italic = true },
	},
}

return M
