local Test = require 'lib.u-test.u-test'
local D2 = require 'src.derived_2'

Test.derived_2.single_instance = function ()
	local c = D2:new()
	Test.is_not_nil(c)
end

Test.derived_2.value = function ()
	Test.property(D2, 'value', 0, 1)
end

Test.derived_2.value2 = function ()
	Test.property(D2, 'value2', 1, 2)
end

Test.derived_2.value3 = function ()
	Test.property(D2, 'value3', 2, 3)
end
