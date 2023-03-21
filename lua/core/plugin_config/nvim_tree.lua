vim.g.loaded_netrw = 1
vim.g.loaded_netewPlugin = 1

vim.opt.termguicolors = true

-- config to reflect default NERDTree plugin apperance
require("nvim-tree").setup {
    view = {
        side = "right",
        signcolumn = "no",
    },

    filesystem_watchers = {
        ignore_dirs = {},
      },

    renderer = {
      indent_width = 1,
      indent_markers = {
        enable = false,
        inline_arrows = false,
      },
      icons = {
        webdev_colors = true,
        show = {
          file = false,
          folder = true,
          folder_arrow = true,
          git = false,
          modified = false,
        },
        glyphs = {
          default = "",
          symlink = "",
          bookmark = "",
          modified = "",
          folder = {
            arrow_closed = "▸",
            arrow_open = "▾",
            default = "",
            open = "",
            empty = "",
            empty_open = "",
            symlink = "",
            symlink_open = "",
          },
        },
      },
      special_files = { "Makefile", "README.md", "readme.md" },
      symlink_destination = true,
    },
}

vim.keymap.set('n', '<leader>p', ':NvimTreeToggle<CR>')
