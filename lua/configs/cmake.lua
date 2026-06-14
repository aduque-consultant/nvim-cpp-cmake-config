return {
  cmake_command = "cmake",
  ctest_command = "ctest",
  cmake_use_preset = true,
  cmake_regenerate_on_save = true,
  cmake_generate_options = { "-DCMAKE_EXPORT_COMPILE_COMMANDS=1" },
  cmake_build_directory = "out/${variant:buildType}",
  cmake_compile_commands_options = {
    action = "lsp",
  },
  cmake_executor = {
    name = "quickfix",
    opts = {},
  },
  cmake_runner = {
    name = "terminal",
    opts = {},
  },
  cmake_dap_configuration = {
    name = "Launch CMake target",
    type = "codelldb",
    request = "launch",
    stopOnEntry = false,
    runInTerminal = true,
  },
}
