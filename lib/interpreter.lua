local function Interpreter ()
  local self = {}

  package.path = '?;?.lua;lib/?;lib/?.lua' 
  local Flow = require('flow')
  local Heap = require('heap')
  local Stack = require('stack')
  local Io = require('io')
  local Operations = require('operations')

  local flowEngine = Flow()
  local dataStack = Stack(true)
  local dataHeap = Heap()

  function self.test ()
    print('test')
    print(flowEngine)
    print(dataStack)
  end

  return self
end
return Interpreter
