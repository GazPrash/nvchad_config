---@type NvPluginSpec[]

local plugins = {
  {
    "NeogitOrg/neogit",
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim" }, -- Neogit requires plenary.nvim
    config = function()
      require("neogit").setup()
    end,
  },
  {
    "github/copilot.vim",
    lazy = false,
  },
  {
    "ggandor/leap.nvim",
    lazy = false,
    config = function()
      local leap = require('leap')
      leap.add_default_mappings()
      leap.opts.case_sensitive = false
    end,
  },
  {
    "akinsho/git-conflict.nvim",
    lazy = false,
    version = "*",
    config = true
  },
  {
    'Bekaboo/dropbar.nvim',
    lazy = false,
    -- optional, but required for fuzzy finder support
    dependencies = {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make'
    },
  },
}

return plugins
