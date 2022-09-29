require "test_helper"

class ControllernameControllerTest < ActionDispatch::IntegrationTest
  test "should get sessions" do
    get controllername_sessions_url
    assert_response :success
  end
end
