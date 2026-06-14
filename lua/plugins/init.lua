return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "c",
        "cpp",
        "cmake",
        "json",
        "lua",
        "qmljs",
        "vim",
        "vimdoc",
      },
    },
  },

  {
    "folke/which-key.nvim",
    lazy = false,
    opts = {
      delay = 250,
      preset = "modern",
      spec = {
        { "<leader>a", group = "AI" },
        { "<leader>c", group = "CMake / code" },
        { "<leader>d", group = "Debug / diagnostics" },
        { "<leader>f", group = "Find / format" },
        { "<leader>g", group = "Git" },
        { "<leader>t", group = "Terminal / themes" },
      },
    },
  },

  {
    "kdheepak/lazygit.nvim",
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    dependencies = { "nvim-lua/plenary.nvim" },
  },

  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
      },
    },
    opts = function(_, opts)
      opts.extensions = opts.extensions or {}
      opts.extensions.fzf = {
        fuzzy = true,
        override_generic_sorter = true,
        override_file_sorter = true,
        case_mode = "smart_case",
      }
      table.insert(opts.extensions_list, "fzf")
      return opts
    end,
  },

  {
    "Civitasv/cmake-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    cmd = {
      "CMakeBuild",
      "CMakeClean",
      "CMakeDebug",
      "CMakeGenerate",
      "CMakeRun",
      "CMakeSelectBuildTarget",
      "CMakeSelectConfigurePreset",
    },
    opts = require "configs.cmake",
  },

  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "rcarriga/nvim-dap-ui",
    },
    config = function()
      require "configs.dap"
    end,
  },
}
