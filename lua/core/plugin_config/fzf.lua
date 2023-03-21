require('fzf-lua').setup{
  preview_opts = 'hidden',
  winopts = { width = 0.9, height = 0.6 },
  grep = { cmd = 'grep -rIn --exclude-dir=".git" --exclude-dir="docs" --exclude-dir=".mypy_cache" --exclude-dir=".pytest_cache" --exclude "*.{pyc, json, svg}"' }
}

vim.api.nvim_set_keymap('n', '<leader>f',
    "<cmd>lua require('fzf-lua').files()<CR>",
    { noremap = true, silent = true }
)

vim.api.nvim_set_keymap('n', '<leader>g',
    "<cmd>lua require('fzf-lua').grep()<CR>",
    { noremap = true, silent = true }
)
