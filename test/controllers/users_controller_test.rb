require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_path
    assert_response :success
  end

  test "should get show" do
    get show_path
    assert_response :success
  end

end
