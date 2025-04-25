return {
  --- lualine
  {
    'nvim-lualine/lualine.nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
      -- add this plugin as dependency for lualine
      'bwpge/lualine-pretty-path',
    },
    event = 'VeryLazy',
    config = function()
      require('lualine').setup {
        options = {
          -- recommended to use this plugin in lualine_c,
          -- see below for options
          sections = {
            lualine_c = { 'pretty_path' },
          },
          inactive_sections = {
            lualine_c = { 'pretty_path' },
          },
          theme = 'catppuccin',
          icons_enabled = true,
          globalstatus = true,
          disabled_filetypes = { statusline = { 'lazy' } },
          section_separators = { left = '', right = '' },
          component_separators = { left = '', right = '' },
        },
      }
    end,
  },
}
