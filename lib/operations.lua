local function Operations (stack, heap, flow, stream)

  local self = {}
  local stack = stack or error('Need data stack to operate on.')
  if stack.top==nil then
    error('Need insecure access to data stack for efficient manipulation.')
  end
  local heap = heap or error('Need data heap to operate on.')
  local flow = flow or error('Need flow module to operate on.')
  local stream = stream or error('Need stream module to operate on.')

  -- stack
  function self.push (item)
    stack.push(item)
  end

  function self.dupe ()
    stack.push(stack.stack[stack.top])    
  end

  function self.swap ()
    local item = stack.stack[stack.top]
    stack.stack[top] = stack.stack[top - 1]
    stack.stack[top - 1] = item
  end

  function self.pop ()
    stack.pop()
  end

  function self.copy () -- whitespace 0.3+ only
    stack.push(stack.stack[stack.stack.length - stack.pop()])  
  end

  function self.slide (n) -- whitespace 0.3+ only
    local top = stack.pop() 
    for i=1,n do
      stack.pop()
    end
    stack.push(top)
  end

-- arithmetic
  function self.add ()
    stack.stack[top - 1] = stack.stack[top - 1] + stack.pop()
  end

  function self.sub ()
    stack.stack[top - 1] = stack.stack[top - 1] - stack.pop()
  end

  function self.mul ()
    stack.stack[top - 1] = stack.stack[top - 1] * stack.pop()
  end

  function self.div ()
    stack.stack[top - 1] = stack.stack[top - 1] / stack.pop()
  end

  function self.mod ()
    stack.stack[top - 1] = stack.stack[top - 1] % stack.pop()
  end

-- heap
  function self.set ()
    local value = stack.pop()
    local key = stack.pop()
    heap.store(key, value)
  end

  function self.get ()
    stack.push(heap.retrieve(stack.pop()))
  end  
    
-- flow
  function self.mark (label)
    flow.mark(label)
  end

  function self.call (routine)
    flow.call(routine)
  end

  function self.jump (label)
    flow.jump(label)
  end

  function self.jzero (label)
    local test = stack.pop()
    if (test == 0) then
      flow.jump(label)
    end
  end

  function self.jneg (label)
    local test = stack.pop()
    if (test < 0) then
      flow.jump(label)
    end
  end

  function self.done ()
    flow.callback()
  end

  function self.exit ()
    return true
  end

-- stream 
  function self.charIn ()
    heap.store(stack.pop(), stream.readChar())
  end

  function self.charOut ()
    stream.writeChar(stack.pop())
  end

  function self.numberIn ()
    heap.store(stack.pop(), stream.readNumber())
  end

  function self.numberOut ()
    stream.writeNumber(stack.pop())
  end

  return self
end
return Operations
