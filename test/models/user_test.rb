require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(name:"Example User", password: "foobar", password_confirmation: "foobar")
  end

  test "user should be valid" do
    assert @user.valid?
  end
   test "user should be unique" do
    duplicate_user = @user.dup
    @user.save
    assert_not duplicate_user.valid?
  end
  test "user should be not long 20" do
    @user.name = "A"*21
    assert_not @user.valid?
  end
    test "password should be present (nonblank)" do
    @user.password = @user.password_confirmation = " " * 4
    assert_not @user.valid?
  end

  test "password should have a minimum length" do
    @user.password = @user.password_confirmation = "a" * 3
    assert_not @user.valid?
  end
end
