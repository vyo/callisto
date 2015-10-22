package.path = './?;./?.lua;./lib/?;./lib/?.lua'..package.path

local interpreter = require('interpreter')()
local flow = require('flow')()
local heap = require('heap')()
local stack = require('stack')(true)
local stream = require('stream')()
local operations = require('operations')(stack, heap, flow, stream)


print(interpreter)


