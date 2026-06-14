require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<leader>cg", "<cmd>CMakeGenerate<cr>", { desc = "CMake generate" })
map("n", "<leader>cb", "<cmd>CMakeBuild<cr>", { desc = "CMake build" })
map("n", "<leader>cr", "<cmd>CMakeRun<cr>", { desc = "CMake run" })
map("n", "<leader>ct", "<cmd>CMakeSelectBuildTarget<cr>", { desc = "CMake select target" })
map("n", "<leader>cp", "<cmd>CMakeSelectConfigurePreset<cr>", { desc = "CMake select preset" })
map("n", "<leader>cc", "<cmd>CMakeClean<cr>", { desc = "CMake clean" })

map("n", "<leader>gg", "<cmd>LazyGit<cr>", { desc = "Git LazyGit" })
map("n", "<leader>gb", "<cmd>Telescope git_branches<cr>", { desc = "Git branches" })
map("n", "<leader>gc", "<cmd>Telescope git_commits<cr>", { desc = "Git commits" })
map("n", "<leader>gs", "<cmd>Telescope git_status<cr>", { desc = "Git status" })

map({ "n", "t" }, "<leader>tf", function()
  require("nvchad.term").toggle { pos = "float", id = "userFloatTerm" }
end, { desc = "Terminal floating" })
map({ "n", "t" }, "<leader>ts", function()
  require("nvchad.term").toggle { pos = "sp", id = "userHorizontalTerm" }
end, { desc = "Terminal horizontal split" })
map({ "n", "t" }, "<leader>tv", function()
  require("nvchad.term").toggle { pos = "vsp", id = "userVerticalTerm" }
end, { desc = "Terminal vertical" })

map({ "n", "t" }, "<leader>aa", function()
  require("nvchad.term").toggle {
    pos = "float",
    id = "claudeTerm",
    cmd = "claude",
    float_opts = {
      width = 0.9,
      height = 0.9,
      row = 0.05,
      col = 0.05,
    },
  }
end, { desc = "AI Claude terminal" })

map("n", "<leader>db", function()
  require("dap").toggle_breakpoint()
end, { desc = "Debug breakpoint" })
map("n", "<leader>dc", function()
  require("dap").continue()
end, { desc = "Debug continue" })
map("n", "<leader>di", function()
  require("dap").step_into()
end, { desc = "Debug step into" })
map("n", "<leader>do", function()
  require("dap").step_over()
end, { desc = "Debug step over" })
map("n", "<leader>du", function()
  require("dapui").toggle()
end, { desc = "Debug UI" })
