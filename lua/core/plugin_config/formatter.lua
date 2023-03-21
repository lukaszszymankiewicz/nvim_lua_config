
-- format using black and isort
require("formatter").setup {
  logging = true,
  log_level = vim.log.levels.WARN,
  filetype = {

    python = {
        -- black
        function ()
          return {
            exe = "black",
            args = { "-l 80", "-q", "-" },
            stdin = true,
          }
        end,
        -- isort
        function ()
          return {
            exe = "isort",
            args = { "%" },
            stdin = false,
          }
        end,
      },

      ["*"] = {
        require("formatter.filetypes.any").remove_trailing_whitespace
      }
  }
}

