local dap = require('dap')

dap.configurations.cpp = {
  {
    name = 'Launch',
    type = 'lldb',
    request = 'launch',
    program = '${file}',
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
    args = {},
  },
}

-- If you want to use this for Rust and C, add something like this:

dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp

--[[ dap.adapters.codelldb = {
  type = 'executable',
  command = '/Users/zachariahmagee/.local/share/nvim/mason/bin/codelldb',
  name = 'lldb',
  host = '127.0.0.1',
  port = 13000,
} ]]

dap.adapters.lldb = {
    name = "lldb-vscode server",
    type = 'server',
    port = "${port}",
    executable = {
        command = '/usr/local/opt/llvm/bin/lldb-vscode',
        args = { "--port", "${port}" },
    }
} 

return dap
