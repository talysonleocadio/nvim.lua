local dap = require('dap')
dap.adapters.python = {
  type = 'server';
  host = '127.0.0.1';
  port = 11213;
}

dap.configurations.python = {
  {
    type = 'python';
    request = 'attach';
    name = 'Python: Remote Attach';
    connect = {
      port = 11213;
      host = '127.0.0.1';
    };
    mode = "remove";
    cwd = vim.fn.getcwd();
    pathMappings = {
      {
        localRoot = vim.fn.getcwd();
        remoteRoot = "/app";
      }
    };
  }
}
