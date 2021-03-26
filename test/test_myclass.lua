local Test = require 'lib.u-test.u-test'
local MyClass = require 'src.myclass'

Test.myclass.single_instance = function ()
	local c = MyClass:new()
	Test.is_not_nil(c)
end

Test.myclass.value = function ()
	Test.property(MyClass, 'value', 0, 1)
end
