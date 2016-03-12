describe('Stack module', function ()

  local stack = require 'stack'
  stack = stack()

  it('should expose push and pop functions', function ()
    assert.are.equal('function', type(stack.push))
    assert.are.equal('function', type(stack.pop))
  end)

  it('should allow to push any element onto itself', function ()
    assert.has_no_errors(stack.push, 'arbitrary value')
  end)

  it('should always return last added element ', function ()
    local value = 'some value'
    stack.push(value)
    assert.are.equal(value, stack.pop())
  end)

end)
