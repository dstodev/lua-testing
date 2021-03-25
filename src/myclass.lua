local module = {}
module.__index = module


function module.new()
	local self = {}

	self._value = 0

	setmetatable(self, module)
	return self
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
