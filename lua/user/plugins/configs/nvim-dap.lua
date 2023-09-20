local nvim_fn = vim.fn
local dap = require('dap')

dap.adapters.python = function (callback, config)
  if config.request == 'attach' then
    local port = (config.connect or config).port
    local host = (config.connect or config).host

    callback({
      type = 'server',
      port = assert(port, 'A port is required for a python attach configuration'),
      host = host,
      options = {
        source_filetype = 'python'
      }
    })
  else
    callback({
      type = 'executable',
      command = '<path-to-virtualenv>/debugpy/bin/python',
      args = { '-m', 'debugpy.adapter' },
      options = {
        source_filetype = 'python'
      }
    })
  end
end

dap.configurations.python = {
  {
    type = 'python';
    request = 'attach';
    name = 'Python: Remote Attach';
    connect = {
      port = 11220;
      host = '127.0.0.1';
    };
    mode = "remove";
    cwd = nvim_fn.getcwd();
    pathMappings = {
      {
        localRoot = nvim_fn.getcwd();
        remoteRoot = "/app";
      }
    };
  }
}
