local Test = require 'lib.u-test.u-test'
local D1 = require 'src.derived_1'

Test.derived_1.single_instance = function ()
	local c = D1:new()
	Test.is_not_nil(c)
end

Test.derived_1.value = function ()
	Test.property(D1, 'value', 0, 1)
end

Test.derived_1.value2 = function ()
	Test.property(D1, 'value2', 1, 2)
end
