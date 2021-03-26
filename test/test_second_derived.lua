local Test = require 'lib.u-test.u-test'
local SecondDerived = require 'src.second_derived'

Test.second_derived.single_instance = function ()
	local c = SecondDerived:new()
	Test.is_not_nil(c)
end

Test.second_derived.value = function ()
	Test.property(SecondDerived, 'value', 0, 1)
end

Test.second_derived.value2 = function ()
	Test.property(SecondDerived, 'value2', 1, 2)
end

Test.second_derived.value3 = function ()
	Test.property(SecondDerived, 'value3', 2, 3)
end
