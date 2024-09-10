function isWorkPc()
  return jit.os ~= "Linux"
end

local workspace
if isWorkPc() then
  workspace = {
    name = "work",
    path = "~/Documents/notes",
  }
else
  workspace = {
    name = "personal",
    path = "~/documents/personal_notes",
  }
end

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
    workspaces = { workspace },
    disable_frontmatter = true,
    ui = {
      enable = false, -- цвета не используют цветовую схему
      checkboxes = {
        -- Отключил лишние состояния
        [" "] = {},
        ["x"] = {},
      },
    },
    mappings = {
      -- Overrides the 'gf' mapping to work on markdown/wiki links within your vault.
      ["gf"] = {
        action = function()
          return require("obsidian").util.gf_passthrough()
        end,
        opts = { noremap = false, expr = true, buffer = true },
      },
      -- Toggle check-boxes.
      ["<leader>x"] = {
        action = function()
          return require("obsidian").util.toggle_checkbox()
        end,
        opts = { buffer = true },
      },
      -- Smart action depending on context, either follow link or toggle checkbox.
      ["<cr>"] = {
        action = function()
          return require("obsidian").util.smart_action()
        end,
        opts = { buffer = true, expr = true },
      }
    },
  },
}
