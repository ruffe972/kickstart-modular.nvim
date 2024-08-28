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
      {
        name = "personal",
        path = "~/documents/personal_notes",
      },
    },
    disable_frontmatter = true,
    ui = {
      checkboxes = {
        -- Отключил иконки и лишние состояния
        [" "] = { hl_group = "ObsidianTodo" },
        ["x"] = { hl_group = "ObsidianDone" },
      },
    },
  },
}
