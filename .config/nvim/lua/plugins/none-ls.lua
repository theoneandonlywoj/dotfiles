return {
  -- Community managed fork of null-ls
  -- Wrapper for linters and formatters
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylelua,
      }
    }
      vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, {})
    )
  end
}
