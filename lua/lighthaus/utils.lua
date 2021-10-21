local M = {}

M.bg = '#000000'
M.fg = '#ffffff'

local function hexToRgb(hex_str)
  local hex = '[abcdef0-9][abcdef0-9]'
  local pat = '^#(' .. hex .. ')(' .. hex .. ')(' .. hex .. ')$'
  hex_str = string.lower(hex_str)

  assert(string.find(hex_str, pat) ~= nil, 'hex_to_rgb: invalid hex_str: ' .. tostring(hex_str))

  local r, g, b = string.match(hex_str, pat)
  return { tonumber(r, 16), tonumber(g, 16), tonumber(b, 16) }
end

---@param fg string foreground color
---@param bg string background color
---@param alpha number number between 0 and 1. 0 results in bg, 1 results in fg
function M.blend(fg, bg, alpha)
  bg = hexToRgb(bg)
  fg = hexToRgb(fg)

  local blendChannel = function(i)
    local ret = (alpha * fg[i] + ((1 - alpha) * bg[i]))
    return math.floor(math.min(math.max(0, ret), 255) + 0.5)
  end

  return string.format('#%02X%02X%02X', blendChannel(1), blendChannel(2), blendChannel(3))
end

function M.darken(hex, amount, bg)
  return M.blend(hex, bg or M.bg, math.abs(amount))
end
function M.lighten(hex, amount, fg)
  return M.blend(hex, fg or M.fg, math.abs(amount))
end

function M.tint_lualine_color(color, bg, bg_dark)
  local colors = require('lighthaus.colors')
  local group = {
    a = { bg = color, fg = bg },
    b = { bg = M.darken(color, 0.2), fg = M.lighten(color, 0.2) },
  }
  if vim.o.background == 'dark' then
    group.c = {
      bg = M.darken(color, 0.01, bg_dark),
      fg = M.lighten(color, 0.4, colors.fg),
    }
  else
    -- inverting colors for light colorschemes
    group.c = {
      bg = M.lighten(color, 0.01, bg_dark),
      fg = M.darken(color, 0.4, colors.fg),
    }
  end
  return group
end

--- Merge two tables together. Modifies t1 table in place.
---@param t1 table
---@param t2 table
---@return table
function M.merge_tables(t1, t2)
  for k, v in pairs(t2) do
    if type(v) == 'table' then
      if type(t1[k] or false) == 'table' then
        M.merge_tables(t1[k] or {}, t2[k] or {})
      else
        t1[k] = v
      end
    else
      t1[k] = v
    end
  end
  return t1
end

local function deep_copy_helper(orig, copies)
  copies = copies or {}
  local orig_type = type(orig)
  local copy
  if orig_type == 'table' then
    if copies[orig] then
      copy = copies[orig]
    else
      copy = {}
      copies[orig] = copy
      for origKey, origValue in next, orig, nil do
        copy[deep_copy_helper(origKey, copies)] = deep_copy_helper(origValue, copies)
      end
      setmetatable(copy, deep_copy_helper(getmetatable(orig), copies))
    end
  else -- number, string, boolean, etc
    copy = orig
  end
  return copy
end

function M.clone_table(tbl)
  return deep_copy_helper(tbl)
end

function M.set_highlight(group, fg, bg, attr)
  if fg and fg ~= '' and #fg > 0 then
    vim.cmd('hi ' .. group .. ' guifg=' .. fg)
  else
    vim.cmd('hi ' .. group .. ' guifg=NONE')
  end

  if bg and bg ~= '' and #bg > 0 then
    vim.cmd('hi ' .. group .. ' guibg=' .. bg)
  else
    vim.cmd('hi ' .. group .. ' guibg=NONE')
  end

  if attr and attr ~= '' and #attr > 0 then
    vim.cmd('hi ' .. group .. ' gui=' .. attr)
  else
    vim.cmd('hi ' .. group .. ' gui=NONE')
  end
end

return M
