require 'test_helper'

class BackendControllerTest < ActionDispatch::IntegrationTest
  test "should get cms" do
    get backend_cms_url
    assert_response :success
  end

end
