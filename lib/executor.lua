local function Executor ()
  local self = {} 
  local Stack = require('stack')

  local instructionStack = Stack(true)
  local callbackStack = Stack()

  local programCounter = 0
  local labels = {}

  function self.execute ()
    programCounter = 1
    local step = instructionStack.pop()
    while (~step()) do
      step = instructionStack.stack[programCounter]
    end
  end

  function self.mark (label)
    labels[programCounter] = label
  end

  function self.jump (label)
    programCounter = labels[label]
  end

  function self.callback ()
    jump(calbackStack.pop())
  end
  
  return self
end
