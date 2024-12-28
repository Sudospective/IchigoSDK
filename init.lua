---@meta

---@class float : number

--- The Ichigo Template's environment. All source
--- and header files run in this environment.
--- <br>
--- Libraries do not run in this environment, but
--- rather extend its features.
---@class IchigoEnv
ichi = {}

--- The X center of the screen.
SCX = SCREEN_CENTER_X
--- The Y center of the screen.
SCY = SCREEN_CENTER_Y
--- The width of the screen.
SW = SCREEN_WIDTH
--- The height of the screen.
SH = SCREEN_HEIGHT
--- The left of the screen.
SL = SCREEN_LEFT
--- The right of the screen.
SR = SCREEN_RIGHT
--- The top of the screen.
ST = SCREEN_TOP
--- The bottom of the screen.
SB = SCREEN_BOTTOM
--- The width of the display.
DW = DISPLAY:GetDisplayWidth()
--- The height of the display.
DH = DISPLAY:GetDisplayHeight()

--- The current song.
SONG = SongObject
--- The current song position.
SONG_POS = SongPosition

--- The root directory of the current song.
SONG_ROOT = SONG:GetSongDir()
--- The source directory of the current song.
SRC_ROOT = SONG_ROOT.."src"

--- The short enum of each available Player.
Players = {"P1", "P2"}
--- The Actors that make up the gimmick file.
Actors = {
  P1 = Player,
  P2 = Player,
  Frame = ActorFrame,
  Screen = Screen,
}
--- The PlayerOptions of each available Player.
Options = {
  P1 = PlayerOptions,
  P2 = PlayerOptions,
}
--- The Steps available in the current Song.
Charts = {
  P1 = Steps,
  P2 = Steps,
  Beginner = Steps,
  Easy = Steps,
  Medium = Steps,
  Hard = Steps,
  Challenge = Steps,
  Edit = Steps,
}
--- The Profiles available.
Profiles = {
  Machine = Profile,
  P1 = Profile,
  P2 = Profile,
}
--- The PlayerStates of each available Player.
States = {
  P1 = PlayerState,
  P2 = PlayerState,
}
--- The Column Actors of each available Player.
Columns = {
  P1 = {},
  P2 = {},
}
--- The NoteData of each available Player.
NoteData = {
  P1 = {},
  P2 = {},
}

--- Run a file from the `src` folder.
---@param path string
run = function(path) end

--- Include a header from the `include` folder.
---@param name string
include = function(name) end

--- Get a setting from a category in `settings.ini`.
--- If no value is found and a default is provided,
--- it will write the value to `settings.ini`.
---@param category string
---@param name string
---@param default any?
---@return any
setting = function(category, name, default) end

--- The intended height of the gimmick file.
---@type integer
IH = setting "IntendedHeight"


--- User-defined hook. This function is called right after the file is executed.
init = function() end
--- User-defined hook. This function is called when the template is ready to begin.
ready = function() end
--- User-defined hook. This function is called on every frame after ready.
---@param params table
update = function(params) end
--- User-defined hook. This function is called on every input after ready.
---@param event table
input = function(event) end
--- User-defined hook. This function is called on every draw after ready.
draw = function() end
