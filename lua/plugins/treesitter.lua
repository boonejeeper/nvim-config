return {
  'nvim-treesitter/nvim-treesitter',
  build = ":TSUpdate",
  config = function()
    -- TREESITTER CONFIG
    local config = require('nvim-treesitter.configs')
    config.setup({
      ensure_installed = {
        "lua",
        "javascript",
        "zig",
        "typescript",
        "tsx",
        "html",
        "css",
        "rust"
      },
      highlight = { enable = true },
      indent = { enable = true }
    })
  end
}
