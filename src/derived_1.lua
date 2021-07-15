local Base = require 'src.base'
local module = Base:new()


function module:new(instance)
	local instance = instance or {}

	self._value2 = 1

	setmetatable(instance, self)
	self.__index = self
	return instance
end

function module:value2(value)
	if value == nil then
		return self._value2
	else
		self._value2 = value
	end
end


return module
