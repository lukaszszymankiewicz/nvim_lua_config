require('nvim-treesitter.configs').setup {
  ensure_installed = { 'c', 'go', 'lua', 'python', 'help', 'vim' },

  auto_install = true,

  highlight = { enable = true },
  indent = { enable = true, disable = { 'python' } },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = '<c-space>',
      node_incremental = '<c-space>',
      scope_incremental = '<c-s>',
      node_decremental = '<M-space>',
    },
  },
  textobjects = {
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ['aa'] = '@parameter.outer',
        ['ia'] = '@parameter.inner',
        ['af'] = '@function.outer',
        ['if'] = '@function.inner',
        ['ac'] = '@class.outer',
        ['ic'] = '@class.inner',
      },
    },
    move = {
      enable = true,
      set_jumps = true,
      goto_next_start = {
        [']]'] = '@function.outer',
        -- [']]'] = '@class.outer',
      },
      -- goto_next_end = {
      --   [']M'] = '@function.outer',
      --   [']['] = '@class.outer',
      -- },
      goto_previous_start = {
        ['[['] = '@function.outer',
        -- ['[['] = '@class.outer',
      },
      -- goto_previous_end = {
      --   ['[M'] = '@function.outer',
      --   ['[]'] = '@class.outer',
      -- },
    },
    swap = {
      enable = true,
      swap_next = {
        ['<leader>a'] = '@parameter.inner',
      },
      swap_previous = {
        ['<leader>A'] = '@parameter.inner',
      },
    },
  },
}
