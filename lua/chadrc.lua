-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "chocolate",
  hl_override = {
    -- Normal = {
    --   bg = "#1B1B29", -- replace with your preferred hex color
    -- },
    -- NormalNC = {
    --   bg = "#1B1B29",
    -- },
  	Comment = { italic = true },
  	["@comment"] = { italic = true },
  },
}

M.ui = {
  statusline = {
    theme = "vscode_colored", -- Set statusline to rounded
    -- separator_style = "round",
  },
  cmp = {
    style = "atom_colored",
    icons = true,
    icons_left = true,
  },

}

M.nvdash = { load_on_startup = true }

return M
