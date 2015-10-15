local function Stack()
  local self = {}
  local stack = {}
  local top = 0
 
  function self.push (item)
    top = top + 1
    stack[top] = item
  end

  function self.pop()
    local item = stack[top]
    if (item == nil) then
      error('Trying to retrieve from empty stack.')
    end
    top = top - 1
    return item
  end
    
  return self
end

return Stack

