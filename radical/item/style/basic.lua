local setmetatable = setmetatable
local print = print
local pairs=pairs
local base      = require( "radical.base"     )

local module = {
  margins = {
    TOP    = 2,
    BOTTOM = 2,
    RIGHT  = 2,
    LEFT   = 4
  }
}

local function widget_draw23(self, w, cr, width, height)
  self.__drawbasic(self,w, cr, width, height)
  local overlay = self._item and self._item.overlay
  if overlay then
    overlay(self._item._menu,self._item,cr,width,height)
  end
end

local function draw(item,args)
  local args = args or {}

  if not item.widget._overlay_init and not item.widget._draw then
    item.widget.__drawbasic = item.widget.draw
    item.widget.draw = widget_draw23
    item.widget._overlay_init = true
  end

  local state = item.state or {}
  local current_state = state._current_key or nil
  local state_name = base.colors_by_id[current_state]

  if current_state == base.item_flags.SELECTED or (item._tmp_menu) then
    item.widget:set_bg(item.bg_focus)
    item.widget:set_fg(item.fg_focus)
  elseif state_name then
    item.widget:set_bg(args.color or item["bg_"..state_name])
    item.widget:set_fg(              item["fg_"..state_name])
  else
    item.widget:set_bg(args.color or nil)
    item.widget:set_fg(item["fg"])
  end
end

return setmetatable(module, { __call = function(_, ...) return draw(...) end })
-- kate: space-indent on; indent-width 2; replace-tabs on;
