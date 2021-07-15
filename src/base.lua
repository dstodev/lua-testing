local module = {}


-- Inheritance idiom: https://www.lua.org/pil/16.2.html
function module:new(instance)
	local instance = instance or {}

	self._value = 0  -- Should this be 'instance._value = 0' instead?

	setmetatable(instance, self)
	self.__index = self
	return instance
end

function module:value(value)
	if value == nil then
		-- getter
		return self._value
	else
		-- setter
		self._value = value
	end
end


return module
