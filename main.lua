local Base = require 'src.base'
local Test = require 'src.derived_2'

local c1 = Base:new()
local c2 = Base:new()

print(c1:value())
print(c2:value())

c1:value(1)

print(c1:value())
print(c2:value())
