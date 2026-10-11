-- local M = {}
---Reload the config and lua scope
---@return nil
function reload_config(ns)
  ns = ns or 'iritmaximus'

  for name, _ in pairs(package.loaded) do
    if name:match('^' .. ns) then
      package.loaded[name] = nil
    end
  end

  dofile(vim.env.MYVIMRC)
end

-- return M
