return {
  {
    "okuuva/auto-save.nvim",
    cmd = "ASToggle", -- optional for lazy loading on command
    event = { "InsertLeave", "TextChanged" }, -- optional for lazy loading on trigger events
    opts = {},
  },
  {
    "gbprod/nord.nvim",
    enabled = function() return jit.os == "Linux" end,
    enabled = false,
    lazy = false,
    priority = 1000,
    config = function()
      require("nord").setup({})
      vim.cmd.colorscheme("nord")
    end,
  },
  {
    "Mofiqul/dracula.nvim",
    enabled = function() return jit.os ~= "Linux" end,
    lazy = false,
    priority = 1000,
    config = function()
      require("dracula").setup({})
      vim.cmd.colorscheme("dracula")
    end,
  },
}
