local function Operations(stack, heap, executor, io)

  local self = {}
  local stack = stack or error('Need data stack to operate on.')
  local heap = heap or error('Need data heap to operate on.')
  local executor = executor or error('Need executor module to operate on.')
  local io = io or error('Need io modul module to operate on.')

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
    
-- executor
  function self.mark (label)
    executor.mark(label)
  end

  function self.call (routine)
    executor.call(routine)
  end

  function self.jump (label)
    executor.jump(label)
  end

  function self.jzero (label)
    local test = stack.pop()
    if (test == 0) then
      executor.jump(label)
    end
  end

  function self.jneg (label)
    local test = stack.pop()
    if (test < 0) then
      executor.jump(label)
    end
  end

  function self.done ()
    executor.callback()
  end

  function self.exit ()
    return true
  end

-- io
  function self.charIn ()
  end

  function self.charOut ()
  end

  function self.numIn ()
  end

  function self.numOut ()
  end


  return Operations

end

