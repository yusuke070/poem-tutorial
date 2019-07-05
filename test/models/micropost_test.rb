require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = Micropost.new(content: "Example User")
  end

  test "should be valid" do
    assert @user.valid?
  end
   test "should be invalid" do
     @user.content = ""
    assert_not @user.valid?
  end
end