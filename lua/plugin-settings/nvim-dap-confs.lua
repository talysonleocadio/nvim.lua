local dap = require('dap')
dap.adapters.python = {
  type = 'server';
  host = '127.0.0.1';
  port = 11211;
  -- command = os.getenv('HOME') .. '/.virtualenvs/tools/bin/python';
  -- args = { '-m', 'debugpy.adpter' }
}

dap.configurations.python = {
  {
    type = 'python';
    request = 'attach';
    name = 'Python: Remote Attach';
    pathMappings = {
      {
        localRoot = "${workspaceFolder}";
        remoteRoot = "/app";
      }
    };
  }
}
