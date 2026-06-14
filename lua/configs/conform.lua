local formatters_by_ft = {
  lua = { "stylua" },
  c = { "clang_format" },
  cpp = { "clang_format" },
  objc = { "clang_format" },
  objcpp = { "clang_format" },
}

-- qmlformat ships with Qt 6. Enable it only after Qt's bin directory is on PATH.
if vim.fn.executable "qmlformat" == 1 then
  formatters_by_ft.qml = { "qmlformat" }
end

local options = {
  formatters_by_ft = formatters_by_ft,
  format_on_save = {
    timeout_ms = 1000,
    lsp_format = "fallback",
  },

  formatters = {
    clang_format = {
      command = "C:/Program Files/LLVM/bin/clang-format.exe",
    },
  },
}

return options
