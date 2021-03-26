local Test = require 'lib.u-test.u-test'
local FirstDerived = require 'src.first_derived'

Test.first_derived.single_instance = function ()
	local c = FirstDerived:new()
	Test.is_not_nil(c)
end

Test.first_derived.value = function ()
	Test.property(FirstDerived, 'value', 0, 1)
end

Test.first_derived.value2 = function ()
	Test.property(FirstDerived, 'value2', 1, 2)
end
