package.path = './?;./?.lua;./lib/?;./lib/?.lua'
local interpreter = require('interpreter')()
local flow = require('flow')()
local heap = require('heap')()
local stack = require('stack')(true)
local streams = require('streams')()
local operations = require('operations')(stack, heap, flow, streams)


print(interpreter)
interpreter.test()


