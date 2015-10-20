local function Io ()
  local self = {}

  function self.readChar ()
    return io.read(1) 
  end

  function self.writeChar ()

  end

  function self.readNumber ()
    return io.read("*n")
  end

  function self.writeNumber ()

  end

  return self
end
return Io

