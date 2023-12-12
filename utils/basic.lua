local module = {}

module.is_windows = (function()
  if jit then
    local os = string.lower(jit.os)
    if os ~= "windows" then
      return false
    else
      return true
    end
  else
    return package.config:sub(1, 1) == "\\"
  end
end)()

return module
