---@meta

--- Equivalent to an Actor.
---@class Gizmo : Actor
---@field private __actor table
---@field private __type "Actor"
Gizmo = {}
---@return self
function Gizmo:new() end
---@return Actor
function Gizmo:GetActor() end

--- Equivalent to an ActorFrame.
---@class Container : ActorFrame
---@field private __actor table
---@field private __type "ActorFrame"
Container = {}
---@return self
function Container:new() end
---@return ActorFrame
function Container:GetActor() end
---@param child Gizmo
---@return self
function Container:AddGizmo(child) end

--- Equivalent to an ActorScroller.
---@class RollingContainer : ActorScroller
---@field private __actor table
---@field private __type "ActorScroller"
RollingContainer = {}
---@return self
function RollingContainer:new() end
---@return ActorScroller
function RollingContainer:GetActor() end
---@param child Gizmo
---@return self
function RollingContainer:AddGizmo(child) end

--- Equivalent to a Quad.
---@class Rect : Quad
---@field private __actor table
---@field private __type "Quad"
Rect = {}
---@return self
function Rect:new() end
---@return Quad
function Rect:GetActor() end

--- Equivalent to a Sprite.
---@class Image : Sprite
---@field private __actor table
---@field private __type "Sprite"
Image = {}
---@param path? string
---@return self
function Image:new(path) end
---@return Sprite
function Image:GetActor() end

--- Equivalent to an ActorMultiTexture.
---@class MultiImage : ActorMultiTexture
---@field private __actor table
---@field private __type "ActorMultiTexture"
MultiImage = {}
---@return self
function MultiImage:new() end
---@return ActorMultiTexture
function MultiImage:GetActor() end

--- Equivalent to a BitmapText.
---@class Label : BitmapText
---@field private __actor table
---@field private __type "BitmapText"
Label = {}
---@param text? string
---@param font? string
---@return self
function Label:new(text, font) end
---@return BitmapText
function Label:GetActor() end

--- Equivalent to an ActorFrameTexture.
---@class RenderTarget : ActorFrameTexture
---@field private __actor table
---@field private __type "ActorFrameTexture"
RenderTarget = {}
---@return self
function RenderTarget:new() end
---@return ActorFrameTexture
function RenderTarget:GetActor() end

--- Equivalent to an ActorScreenTexture.
---@class Viewport : ActorScreenTexture
---@field private __actor table
---@field private __type "ActorScreenTexture"
Viewport = {}
---@return self
function Viewport:new() end
---@return ActorScreenTexture
function Viewport:GetActor() end

--- No Actor equivalent.
---@class ShaderLoader : Actor
---@field private __actor table
---@field private __type "Actor"
ShaderLoader = {}
---@return self
function ShaderLoader:new() end
---@param path string
---@param name string
---@return self
function ShaderLoader:LoadShader(path, name) end

--- Equivalent to a Model.
---@class Model3D : Model
---@field private __actor table
---@field private __type "Model"
Model3D = {}
---@return self
function Model3D:new() end
---@return Model
function Model3D:GetActor() end
---@param path string
function Model3D:LoadMeshes(path) end
---@param path string
function Model3D:LoadMaterials(path) end

--- Equivalent to an ActorSound.
---@class Audio : ActorSound
---@field private __actor table
---@field private __type "Sound"
Audio = {}
---@return self
function Audio:new() end
---@return ActorSound
function Audio:GetActor() end
---@param b boolean
function Audio:SetPrecache(b) end

--- Equivalent to an ActorProxy.
---@class Proxy : ActorProxy
---@field private __actor table
---@field private __type "ActorProxy"
Proxy = {}
---@return self
function Proxy:new() end
---@return ActorProxy
function Proxy:GetActor() end

--- Equivalent to a NoteField.
---@class PlayField : NoteField
---@field private __actor table
---@field private __type "NoteField"
PlayField = {}
PlayField.__type = "NoteField"
---@return self
function PlayField:new() end
---@return NoteField
function PlayField:GetActor() end

--- No Actor equivalent.
---@class FakePlayer : ActorFrame
---@field private __actor table
---@field private __type "ActorFrame"
FakePlayer = {}
---@return self
function FakePlayer:new() end
---@return ActorFrame
function FakePlayer:GetActor() end

--- No Actor equivalent.
---@class ProxyWall : ActorScroller
---@field private __actor table
---@field private __type "ActorScroller"
ProxyWall = {}
---@return self
function ProxyWall:new() end
---@return ActorScroller
function ProxyWall:GetActor() end
---@param child Gizmo
---@return self
function ProxyWall:AddGizmo(child) end
---@param offset float
---@return self
function ProxyWall:SetWallX(offset) end

--- Equivalent to an ActorMultiVertex.
---@class Polygon : ActorMultiVertex
---@field private __actor table
---@field private __type "ActorMultiVertex"
Polygon = {}
---@return self
function Polygon:new() end
---@return ActorMultiVertex
function Polygon:GetActor() end

--- Equivalent to an AudioVizualizer.
---@class AudioWaveform : AudioVisualizer
---@field private __actor table
---@field private __type "AudioVisualizer"
AudioWaveform = {}
---@return self
function AudioWaveform:new() end
---@return AudioVisualizer
function AudioWaveform:GetActor() end
