-- this will just have to do

---@meta

---@class classFunctions
classFunctions = {}
--- Extend from a class. The base class must exist.
--- ```lua
--- class "DerivedClass" : extends "BaseClass" {
---   SayHelloTo = function(self, name)
---     lua.ReportScriptError("Hi, "..tostring(name).."!")
---   end;
--- }
--- ```
---@see class
---@param name string
classFunctions.extends = function(self, name) end

--- Create a class. You can extend from a base class using the `extends`
--- keyword.
--- ```lua
--- class "BaseClass" {
---   SayHelloTo = function(self, name)
---     lua.ReportScriptError("Hello, "..tostring(name).."!")
---   end;
--- }
--- ```
---@param name string
---@return classFunctions
class = function(name) end

--- Create a namespace. For example, `MyNamespace.MyThirdVar()`
--- will print "foo" to the console in the example below.
--- ```lua
--- namespace "MyNamespace" {
---   MyVariable = "foo";
---   MyOtherVar = 0;
---   MyThirdVar = function()
---     print(MyNamespace.MyVariable)
---   end;
--- }
--- ```
---@param name string
namespace = function(name) end

--- Use a namespace.
--- ```lua
--- using "MyNamespace" (function()
---   MyOtherVar = 23
---   MyThirdVar()
--- end)
--- ```
---@see namespace
---@param namespace string
---@return function instructions
using = function(namespace) end
