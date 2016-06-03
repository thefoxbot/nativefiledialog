-- sorry for the bad tests~
describe("nfd", function()
   local nfd = require 'nfd'
   it("exists", function()
      assert.not_nil(nfd.open)
      assert.not_nil(nfd.openMany)
      assert.not_nil(nfd.save)
   end)
   -- we can't actually automate file picking, so just try invalid inputs instead
end)
