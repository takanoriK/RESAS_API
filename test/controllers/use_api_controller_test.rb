require 'test_helper'

class UseApiControllerTest < ActionDispatch::IntegrationTest
  test "should get get_json" do
    get use_api_get_json_url
    assert_response :success
  end

end
