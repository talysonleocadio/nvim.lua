require('plugins')
require('settings')
require('keybinds')
local utils = require('utils')

local settings_path = vim.fn['stdpath']('config') .. '/lua/plugin-settings'
local list_settings_files_command = 'ls ' .. settings_path

for file in io.popen(list_settings_files_command):lines() do
  local setting = utils.split_by_dot_and_get_setting_name(file)
  require('plugin-settings.' .. setting)
end
