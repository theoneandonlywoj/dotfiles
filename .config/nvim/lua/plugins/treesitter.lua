return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    -- Treesitter --
    local tsconfig = require("nvim-treesitter.configs")
    tsconfig.setup({
      ensure_installed = { "lua", "elixir", "dockerfile", "make" },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
