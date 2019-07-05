require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  def setup
    @Micropost = Micropost.new(content:"今日の投稿")
  end

  test "投稿の存在性" do
    
  end
    test "投稿の文字数制限(250)" do
    
  end

end