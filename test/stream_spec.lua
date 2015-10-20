local stream = require 'stream'

describe('Stream test', function ()
  stream = stream()
  --mock io functions
  io.read = function (flag)
    if type(flag)=='number' then --reads the specified amount of chars
      return 'a'
    elseif type(flage)=='string' then --reads a single number
      return 97
    end
  end
  local out
  print = function (value)
    out = value
  end

  describe('should expose functions for reading/writing character/numbers,', function ()
    
    it('i.e. read in characters from STDIN', function ()
      assert.is_not_nil(stream.readChar)
      assert.are.equals('function', type(stream.readChar))
      assert.are.equals('a', stream.readChar())
    end)

    it('i.e. write out characters to STDOUT', function ()
      assert.is_not_nil(stream.writeChar)
      assert.are.equals('function', type(stream.writeChar))
      stream.writeChar(98)
      assert.are.equals('b', out)
    end)

    it('i.e. read in numbers from STDIN', function ()
      assert.is_not_nil(stream.readNumber)
      assert.are.equals('function', type(stream.readNumber))
      assert.is(97==stream.readNumber())
    end)

    it('i.e. write out numbers to STDOUT', function ()
      assert.is_not_nil(stream.writeNumber)
      assert.are.equals('function', type(stream.writeNumber))
      stream.writeNumber(98)
      assert.is(98==out)
    end)

  end)

end)
