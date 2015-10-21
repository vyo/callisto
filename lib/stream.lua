local function Io ()
  local self = {}

  function self.readChar ()
    return io.read(1) 
  end

  function self.writeChar (value)
    print(string.char(value))
  end

  function self.readNumber ()
    return io.read("*number")
  end

  function self.writeNumber (value)
    print(value)
  end

  return self
end
return Io

