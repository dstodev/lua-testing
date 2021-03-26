local Class = require 'src.myclass'
local Test = require 'src.second_derived'

local c1 = Class:new()
local c2 = Class:new()

print(c1:value())
print(c2:value())

c1:value(1)

print(c1:value())
print(c2:value())
