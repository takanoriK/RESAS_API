require 'test_helper'

class RootControllerTest < ActionDispatch::IntegrationTest
  test "should get useApi" do
    get root_useApi_url
    assert_response :success
  end

end
