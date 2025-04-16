return {
  -- tools
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "luacheck",
        "shellcheck",
        "shfmt",
        "tailwindcss-language-server",
        "typescript-language-server",
        "css-lsp",
      },
    },
  },

  -- lsp servers
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = require("lspconfig")
      local lsp_addons = { "lua_ls", "ts_ls", "html", "tailwindcss", "biome" }
      for _, server in ipairs(lsp_addons) do
        lspconfig[server].setup({ capabilities = capabilities })
      end
      vim.list_extend(keys, {
        {
          "gd",
          function()
            -- DO NOT RESUSE WINDOW
            require("telescope.builtin").lsp_definitions({ reuse_win = false })
          end,
          desc = "Goto Definition",
          has = "definition",
        },
      })
    end,
    -- 	opts = {
    -- 		inlay_hints = { enabled = false },
    -- 		---@type lspconfig.options
    -- 		servers = {
    -- 			cssls = {},
    -- 			tailwindcss = {
    -- 				root_dir = function(...)
    -- 					return require("lspconfig.util").root_pattern(".git")(...)
    -- 				end,
    -- 			},
    -- 			tsserver = {
    -- 				root_dir = function(...)
    -- 					return require("lspconfig.util").root_pattern(".git")(...)
    -- 				end,
    -- 				single_file_support = false,
    -- 				settings = {
    -- 					typescript = {
    -- 						inlayHints = {
    -- 							includeInlayParameterNameHints = "literal",
    -- 							includeInlayParameterNameHintsWhenArgumentMatchesName = false,
    -- 							includeInlayFunctionParameterTypeHints = true,
    -- 							includeInlayVariableTypeHints = false,
    -- 							includeInlayPropertyDeclarationTypeHints = true,
    -- 							includeInlayFunctionLikeReturnTypeHints = true,
    -- 							includeInlayEnumMemberValueHints = true,
    -- 						},
    -- 					},
    -- 					javascript = {
    -- 						inlayHints = {
    -- 							includeInlayParameterNameHints = "all",
    -- 							includeInlayParameterNameHintsWhenArgumentMatchesName = false,
    -- 							includeInlayFunctionParameterTypeHints = true,
    -- 							includeInlayVariableTypeHints = true,
    -- 							includeInlayPropertyDeclarationTypeHints = true,
    -- 							includeInlayFunctionLikeReturnTypeHints = true,
    -- 							includeInlayEnumMemberValueHints = true,
    -- 						},
    -- 					},
    -- 				},
    -- 			},
    -- 			html = {},
    -- 			yamlls = {
    -- 				settings = {
    -- 					yaml = {
    -- 						keyOrdering = false,
    -- 					},
    -- 				},
    -- 			},
    -- 			lua_ls = {
    -- 				-- enabled = false,
    -- 				single_file_support = true,
    -- 				settings = {
    -- 					Lua = {
    -- 						workspace = {
    -- 							checkThirdParty = false,
    -- 						},
    -- 						completion = {
    -- 							workspaceWord = true,
    -- 							callSnippet = "Both",
    -- 						},
    -- 						misc = {
    -- 							parameters = {
    -- 								-- "--log-level=trace",
    -- 							},
    -- 						},
    -- 						hint = {
    -- 							enable = true,
    -- 							setType = false,
    -- 							paramType = true,
    -- 							paramName = "Disable",
    -- 							semicolon = "Disable",
    -- 							arrayIndex = "Disable",
    -- 						},
    -- 						doc = {
    -- 							privateName = { "^_" },
    -- 						},
    -- 						type = {
    -- 							castNumberToInteger = true,
    -- 						},
    -- 						diagnostics = {
    -- 							disable = { "incomplete-signature-doc", "trailing-space" },
    -- 							-- enable = false,
    -- 							groupSeverity = {
    -- 								strong = "Warning",
    -- 								strict = "Warning",
    -- 							},
    -- 							groupFileStatus = {
    -- 								["ambiguity"] = "Opened",
    -- 								["await"] = "Opened",
    -- 								["codestyle"] = "None",
    -- 								["duplicate"] = "Opened",
    -- 								["global"] = "Opened",
    -- 								["luadoc"] = "Opened",
    -- 								["redefined"] = "Opened",
    -- 								["strict"] = "Opened",
    -- 								["strong"] = "Opened",
    -- 								["type-check"] = "Opened",
    -- 								["unbalanced"] = "Opened",
    -- 								["unused"] = "Opened",
    -- 							},
    -- 							unusedLocalExclude = { "_*" },
    -- 						},
    -- 						format = {
    -- 							enable = false,
    -- 							defaultConfig = {
    -- 								indent_style = "space",
    -- 								indent_size = "2",
    -- 								continuation_indent_size = "2",
    -- 							},
    -- 						},
    -- 					},
    -- 				},
    -- 			},
    -- 		},
    -- 		setup = {},
    -- 	},
    -- },
  },
}
