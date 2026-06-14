require("nvchad.configs.lspconfig").defaults()

vim.lsp.config("clangd", {
  cmd = {
    "clangd",
    "--background-index",
    "--clang-tidy",
    "--completion-style=detailed",
    "--header-insertion=iwyu",
    "--inlay-hints",
  },
  root_markers = {
    ".clangd",
    ".clang-tidy",
    ".clang-format",
    "compile_commands.json",
    "compile_flags.txt",
    "CMakeLists.txt",
    ".git",
  },
})

local servers = { "html", "cssls", "clangd" }

-- qmlls ships with Qt 6. It activates automatically once Qt's bin directory is on PATH.
if vim.fn.executable "qmlls" == 1 then
  table.insert(servers, "qmlls")
end

vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
