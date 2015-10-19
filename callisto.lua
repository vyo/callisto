package.path = './?;./?.lua;./lib/?;./lib/?.lua'
local Interpreter = require 'interpreter'
local interpreter = Interpreter()

print(interpreter)
interpreter.test()


