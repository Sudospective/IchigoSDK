---@meta

--- The player(s) to use for gimmicks.
plr = nil
--- The note(s) to use for notegimmicks.
notes = nil

--- Returns whether the game is paused.
---@return boolean paused
yasumi = function() end
--- Change the rate at which gimmicks update.
---@param time float
updatetime = function(time) end
--- Returns whether OutFox version is 0.5 or above.
---@return boolean greater
go = function() end

--- Insert an Actor. Self-returning and chainable.
--- ```lua
--- actor {
---   Type = "Quad",
---   InitCommand = function(self)
---     self:FullScreen():diffuse(0, 0, 0, 1)
---   end,
--- }
--- ```
---@param t table
---@return fun(t: table) actor
actor = function(t) end
--- Insert a Gizmo. Also works on Container Gizmos.
--- ```lua
--- GoodBoy = Rect:new()
--- AddGizmo(Goodboy)
--- ```
AddGizmo = function(gizmo) end
--- Insert a gimmick. `plr` is an optional key in the table passed to
--- `gimmick`, and defaults to `nil`. Self-returning and chainable.
--- ```lua
--- -- {percent, mod} sets default mod
--- gimmick {100, "modtimersong"}
--- -- {beat, percent, mod} sets mod on beat
--- gimmick {0, 100, "flip"}
--- -- {beat, length, ease, start, end, mod} eases mod
--- -- between start and end on beat for length
--- gimmick {0, 1, Tweens.easeInOutQuint, 0, -100, "invert", plr = 1}
--- ```
---@param t table
---@return fun(t: table) gimmick
gimmick = function(t) end
--- Insert a notegimmick. Works similar to `gimmick`. `notes` is a required
--- key in the table passed to `notegimmick`. Self-returning and chainable.
--- ```lua
--- notegimmick {-4, 100, "reverse", notes = {
---   {beat = 0, col = 1}
--- }}
--- ```
---@param t table
---@return fun(t: table) notegimmick
notegimmick = function(t) end
--- Create a loop. When looping through numbers, `steps` is an optional key
--- in the table passed to `loop`, and defaults to `1`. Self-returning and chainable.
--- ```lua
--- loop {0, 16, step = 2, function(beat)
---   gimmick {beat, 2, Tweens.easeLinear, -200, 0, "tiny"}
--- end}
--- loop {Actors, function(key, value)
---   lua.ReportScriptError(key..": "..tostring(value))
--- end}
--- ```
---@param t table
---@return fun(t: table) loop
loop = function(t) end

--- Register a NoteField. Returns the size of the standard library's internal
--- poptions table (***not*** the `Options` table).
---@param nf NoteField
---@return integer count
register = function(nf) end

--- Setup an ActorProxy to proxy the specified player.
--- @param plr Player
--- @param proxy ActorProxy
setupPlayer = function(plr, proxy) end
--- Setup an ActorProxy to proxy the judgment of the specified player.
--- @param plr Player
--- @param proxy ActorProxy
setupJudgment = function(plr, proxy) end
--- Setup an ActorProxy to proxy the combo of the specified player.
--- @param plr Player
--- @param proxy ActorProxy
setupCombo = function(plr, proxy) end
