require 'test_helper'

class RoleTest < ActiveSupport::TestCase
  should validate_presence_of(:name)
  should validate_uniqueness_of(:name)
  
  should have_many(:assignments)
  should have_many(:users).through(:assignments)
end
