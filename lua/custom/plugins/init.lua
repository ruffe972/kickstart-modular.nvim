return {
  {
    "bullets-vim/bullets.vim",
    init = function()
      vim.g.bullets_set_mappings = 0
      vim.g.bullets_custom_mappings = {
        {'imap', '<cr>', '<Plug>(bullets-newline)'},
        {'inoremap', '<C-cr>', '<cr>'},

        {'nmap', 'o', '<Plug>(bullets-newline)'},

        {'vmap', 'gN', '<Plug>(bullets-renumber)'},
        {'nmap', 'gN', '<Plug>(bullets-renumber)'},

        {'nmap', '<leader>x', '<Plug>(bullets-toggle-checkbox)'},

        -- {'imap', '<C-t>', '<Plug>(bullets-demote)'},
        -- {'nmap', '>>', '<Plug>(bullets-demote)'},
        -- {'vmap', '>', '<Plug>(bullets-demote)'},
        -- {'imap', '<C-d>', '<Plug>(bullets-promote)'},
        -- {'nmap', '<<', '<Plug>(bullets-promote)'},
        -- {'vmap', '<', '<Plug>(bullets-promote)'},
      }
    end
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
