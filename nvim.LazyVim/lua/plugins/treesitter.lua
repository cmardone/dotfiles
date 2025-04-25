return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "astro",
      "c_sharp",
      "css",
      "gitignore",
      "http",
      "javascript",
      "json",
      "lua",
      "sql",
      "typescript",
    },
    highlight = { enable = true },
    indent = { enable = true },
  },
  build = function()
    require("nvim-treesitter.install").update({ with_sync = true })()
  end,
}
