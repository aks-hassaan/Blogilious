require "test_helper"

class MySessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get my_sessions_new_url
    assert_response :success
  end

  test "should get create" do
    get my_sessions_create_url
    assert_response :success
  end
end
