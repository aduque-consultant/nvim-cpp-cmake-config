require "nvchad.options"

-- These are only CMake defaults. Project presets and cache variables take precedence.
vim.env.CC = vim.env.CC or "C:/Program Files/LLVM/bin/clang.exe"
vim.env.CXX = vim.env.CXX or "C:/Program Files/LLVM/bin/clang++.exe"
vim.env.CMAKE_GENERATOR = vim.env.CMAKE_GENERATOR or "Ninja"
vim.env.LANG = vim.env.LANG or "en_US.UTF-8"
vim.env.LC_ALL = vim.env.LC_ALL or "en_US.UTF-8"

if vim.fn.has "win32" == 1 and vim.fn.executable "lazygit" == 0 then
  local winget_lazygit = vim.fn.glob(vim.env.LOCALAPPDATA .. "/Microsoft/WinGet/Packages/JesseDuffield.lazygit_*/lazygit.exe")
  if winget_lazygit ~= "" then
    vim.env.PATH = vim.fs.dirname(winget_lazygit) .. ";" .. vim.env.PATH
  end
end

local o = vim.o
o.number = true
o.relativenumber = true
