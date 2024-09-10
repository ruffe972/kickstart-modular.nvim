function isWorkPc()
  return jit.os ~= "Linux"
end

-- local workspace


return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  ft = "markdown",
  dependencies = {
    -- Required
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      -- {
      --   name = "personal",
      --   path = "~/documents/personal_notes",
      -- },
      {
        name = "work",
        path = "~/Documents/notes",
      },
    },
    disable_frontmatter = true,
    ui = {
      checkboxes = {
        -- Отключил иконки и лишние состояния
        [" "] = { hl_group = "ObsidianTodo" },
        ["X"] = { hl_group = "ObsidianDone" },
      },
    },
  },
}
