local function Interpreter ()
  local self = {}

  package.path = '?;?.lua;lib/?;lib/?.lua' 
  local Flow = require('flow')
  local Heap = require('heap')
  local Stack = require('stack')
  local Streams = require('streams')
  local Operations = require('operations')

  local flowEngine = Flow()
  local dataStack = Stack(true)
  local dataHeap = Heap()
  local streamsModule = Streams()

  function self.test ()
    print('test')
    print('flow:\t'..tostring(flowEngine))
    print('stack:\t'..tostring(dataStack))
    print('heap:\t'..tostring(dataHeap))
    print('streams:\t'..tostring(streamsModule))
  end

  return self
end
return Interpreter
