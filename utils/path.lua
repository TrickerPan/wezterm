local basic = require("utils.basic")

local module = {}

function module.exists(filename)
  local file = io.open(filename, "r")
  if file then
    file:close()
    return true
  else
    return false
  end
end
