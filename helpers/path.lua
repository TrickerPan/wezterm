local basic = require("helpers.basic")

local module = {}

module.sep = basic.is_win and "\\" or "/"
module.root = (function()
  if basic.is_win then
    local cwd = module.get_cwd()
    local drive = cwd:sub(1, 1)
    return drive .. ":\\"
  else
    return "/"
  end
end)()

function module.get_cwd()
  local handle
  if module.is_win then
    handle = io.popen("cd")
  else
    handle = io.popen("pwd")
  end
  if not handle then
    return ""
  end

  local result = handle:read("*l")
  handle:close()
  return result
end

function module.exists(filename)
  local file = io.open(filename, "r")
  if file then
    file:close()
    return true
  else
    return false
  end
end

return module

