local D1 = require 'src.derived_1'
local module = D1:new()


function module:new(instance)
	instance = instance or {}

	self._value3 = 2

	setmetatable(instance, self)
	self.__index = self
	return instance
end

function module:value3(value)
	if value == nil then
		return self._value3
	else
		self._value3 = value
	end
end


return module
