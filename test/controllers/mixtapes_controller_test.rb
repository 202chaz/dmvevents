require 'test_helper'

class MixtapesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mixtapes_index_url
    assert_response :success
  end

end
