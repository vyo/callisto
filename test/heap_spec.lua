describe('Heap module', function ()

  local heap = require 'heap'

  setup(function ()
    heap = heap()
  end)

  it('should expose store and retrieve functions', function ()
    assert.are.equals('function', type(heap.store))
    assert.are.equals('function', type(heap.retrieve))
  end)

  it('should allow to store elements by key', function ()
    assert.has_no.errors(heap.store, 'key', 'value')
  end)

  it('should not allow to store nil keys', function ()
    local test = function ()
      heap.store(nil, 'value')
    end
    assert.has_error(test, heap.ERROR_STORE_INVALID_KEY)
  end)

  it('should not allow to store nil values', function ()
    local test = function ()
      heap.store('key', nil)
    end
    assert.has_error(test, heap.ERROR_STORE_INVALID_VALUE)
  end)

  it('should allow to retrieve elements by key', function ()
    heap.store('key', 'value')
    assert.has_no.errors(heap.retrieve, 'key')
    assert.are.equals('value', heap.retrieve('key'))
  end)
 
  it('should not allow to retrieve nil keys', function ()
    local test = function ()
      heap.retrieve(nil)
    end
    assert.has_error(test, heap.ERROR_RETRIEVE_INVALID_KEY)
  end)

end)
