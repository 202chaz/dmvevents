require 'test_helper'

class LifestyleControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get lifestyle_index_url
    assert_response :success
  end

end
