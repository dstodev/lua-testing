local Test = require 'lib.u-test.u-test'
local Base = require 'src.base'

Test.base.single_instance = function ()
	local c = Base:new()
	Test.is_not_nil(c)
end

Test.base.value = function ()
	Test.property(Base, 'value', 0, 1)
end
