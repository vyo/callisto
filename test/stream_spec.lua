--package.path = '?;?.lua;../lib/?;../lib/?.lua'
local stream = require 'stream'

describe('Stream test', function ()
--  package.path = '../lib/?;../lib/?.lua' 
  stream = stream()

  it('should expose functions for reading/writing character/numbers', function ()
    assert.is_not_nil(stream.readChar)
    assert.is_not_nil(stream.writeChar)
    assert.is_not_nil(stream.readNumber)
    assert.is_not_nil(stream.writeNumber)
  end 
  )
end)
