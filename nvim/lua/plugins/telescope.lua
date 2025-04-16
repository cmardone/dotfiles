return {
  "nvim-telescope/telescope.nvim",
  keys = {
    -- add a keymap to browse plugin files
    -- stylua: ignore
    {
      "<leader>ff",
      function() require("telescope.builtin").find_files() end,
      desc = "Telescope find files",
    },
    {
      "<leader>fg",
      function()
        require("telescope.builtin").live_grep()
      end,
      desc = "Telescope live grep",
    },
    {
      "<leader>fb",
      function()
        require("telescope.builtin").buffers()
      end,
      desc = "Telescope find buffers",
    },
    {
      "<leader>fh",
      function()
        require("telescope.builtin").help_tags()
      end,
      desc = "Telescope help tags",
    },
    {
      "<leader>fp",
      function()
        require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
      end,
      desc = "Find Plugin File",
    },
  },
  -- change some options
  opts = {
    defaults = {
      layout_strategy = "horizontal",
      layout_config = { prompt_position = "top" },
      sorting_strategy = "ascending",
      winblend = 0,
    },
  },
}
