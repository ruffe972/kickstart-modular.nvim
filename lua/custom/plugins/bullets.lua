return {
  "bullets-vim/bullets.vim",
  init = function()
    vim.g.bullets_set_mappings = 0
    vim.g.bullets_custom_mappings = {
      {'imap', '<cr>', '<Plug>(bullets-newline)'},
      {'inoremap', '<C-cr>', '<cr>'},

      {'nmap', 'o', '<Plug>(bullets-newline)'},

      {'vmap', 'gN', '<Plug>(bullets-renumber)'},
      {'nmap', 'gN', '<Plug>(bullets-renumber)'},
    }
  end
}
