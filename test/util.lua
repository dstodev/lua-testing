local module = {}


--[[
	This function asserts that:
		* Property exists
		* Property is gettable
		* Property is settable
		* Property is discontinuous; multiple instances do not share property state

	It requires that:
		* The class is instantiable as:
			instance = Class:new()

		* The property is usable as:
			get_value = instance:property()
			instance:property(set_value)
--]]
function module.test_property(class, property, initial_value, set_value, n)
	if not module.has_property(class, property) then
		return false, 'Property ' .. property .. ' not found!'
	end

	local _n = n or 2

	for i = 1, _n do
		local instance = class:new()
		local get = module.getter(instance, property)
		local set = module.setter(instance, property)

		local value = get()

		if initial_value ~= value then
			if i == 1 then
				return false, 'Property not gettable; expected initial value: ' .. initial_value .. ', got: ' .. tostring(value)
			else
				return false, 'Property maintains continuity between class instances!'
			end
		end

		set(set_value)
		value = get()

		if set_value ~= value then
			return false, 'Property not settable; expected set value: ' .. set_value .. ', got: ' .. tostring(value)
		end
	end

	return true
end


function module.has_property(class, property)
	if class[property] == nil then
		return false
	else
		return true
	end
end

function module.getter(instance, property)
	return function ()
		return instance[property](instance)
	end
end

function module.setter(instance, property)
	return function (value)
		return instance[property](instance, value)
	end
end


return module
