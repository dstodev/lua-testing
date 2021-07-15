package.path = './test/?.lua;' .. package.path

local Test = require 'lib.u-test.u-test'  -- https://github.com/IUdalov/u-test
local Util = require 'util'

Test.register_assert('property', Util.test_property)

require 'test_base'
require 'test_derived_1'
require 'test_derived_2'

Test.summary()
