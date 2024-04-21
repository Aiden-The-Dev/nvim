return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  -- { "williamboman/mason-lspconfig.nvim" },
  -- { "jay-babu/mason-null-ls.nvim" },
  -- { "jay-babu/mason-nvim-dap.nvim" },
  {
  	"williamboman/mason.nvim",
  	opts = {
  		ensure_installed = {
  			"lua-language-server", "stylua",
  			"html-lsp", "css-lsp" , "prettier",
        "pyright", "ruff", "black", "isort",
  		},
  	},
  },

  { "nvimtools/none-ls.nvim" },

  {
    "karloskar/poetry-nvim",
    config = function()
        require("poetry-nvim").setup()
    end
  },
  {
    "ray-x/lsp_signature.nvim",
    event = "VeryLazy",
    opts = {},
    config = function(_, opts) require'lsp_signature'.setup(opts) end
  },

  {
    "max397574/better-escape.nvim",
    config = function()
      require("better_escape").setup()
    end,
  },

  {
    "NvChad/nvterm",
    config = function ()
      require("nvterm").setup()
    end,
  },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
        "html", "css"
  		},
  	},
  },
}
