require 'test_helper'
#投稿が成功するか見るためのテスト
class UsersSignupTest < ActionDispatch::IntegrationTest

  test "invalid post" do
    get new_path
    assert_no_difference 'Micropost.count' do
      post microposts_path, params: { micropost: { content:  "" } }
    end
    assert_template 'users/new'
  end
    test "invalid post too long" do
    get new_path
    assert_no_difference 'Micropost.count' do
      post microposts_path, params: { micropost: { content:  "a"*255 } }
    end
    assert_template 'users/new'
  end
  
  
  test "valid post" do
    get new_path
    assert_difference 'Micropost.count', 1 do
       post microposts_path, params: { micropost: { content:  "aaaa" } }
    end
    follow_redirect!
    assert_template 'users/show'
  end
end