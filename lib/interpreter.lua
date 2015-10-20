local function Interpreter ()
  local self = {}

  package.path = '?;?.lua;lib/?;lib/?.lua' 
  local Flow = require('flow')
  local Heap = require('heap')
  local Stack = require('stack')
  local Stream = require('stream')
  local Operations = require('operations')

  local flowEngine = Flow()
  local dataStack = Stack(true)
  local dataHeap = Heap()
  local streamModule = Stream()

  function self.test ()
    print('test')
    print('flow:\t'..tostring(flowEngine))
    print('stack:\t'..tostring(dataStack))
    print('heap:\t'..tostring(dataHeap))
    print('stream:\t'..tostring(streamModule))
  end

  return self
end
return Interpreter
