local function Heap ()
  local self = {}
  local heap = {}

  self.ERROR_STORE_INVALID_KEY = 'Trying to store nil key'
  self.ERROR_STORE_INVALID_VALUE = 'Trying to store nil value'
  self.ERROR_RETRIEVE_INVALID_KEY = 'Trying to retrieve nil key'
  
  function self.store (key, value)
    if key == nil then
      error(self.ERROR_STORE_INVALID_KEY)
    elseif value == nil then
      error(self.ERROR_STORE_INVALID_VALUE)
    end
    heap[key] = value
  end

  function self.retrieve (key)
    if key == nil then
      error(self.ERROR_RETRIEVE_INVALID_KEY)
    end
    return heap[key]
  end

  return self
end
return Heap
