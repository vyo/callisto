local function Interpreter ()
  local self = {}

  package.path = '?;?.lua;lib/?;lib/?.lua'..package.path
  local Flow = require 'flow'
  local Heap = require 'heap'
  local Stack = require 'stack'
  local Stream = require 'stream'
  local Operations = require 'operations'

  local flowEngine = Flow()
  local dataStack = Stack(true)
  local dataHeap = Heap()
  local streamModule = Stream()

  function self.load(whitespace)

  end

  return self
end
return Interpreter
