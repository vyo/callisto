local function Heap ()
  local self = {}
  local heap = {}

  function self.store (key, value)
    heap[key] = value
  end

  function self.retrieve (key)
    return heap[key]
  end

  return self
end
