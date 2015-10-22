describe('Operations module', function ()

  local operations = require 'operations'
  local stack, heap, flow, stream = require 'stack', require 'heap', require 'flow', require 'stream'
  operations = operations(stack(true), heap(), flow(), stream())

  it('should require a stack, heap, flow and stream module', function ()
    pending('')
  end)

end)
