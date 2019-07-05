class UsersController < ApplicationController
  def new
    @micropost = Micropost.new
  end
  
  def create
     @micropost = Micropost.new(micropost_params)    
    if @micropost.save
      # 保存の成功をここで扱う。
       redirect_to show_url
        flash[:success] = "投稿に成功しました!"
    else
      render 'new'
    end
  end

  def show
    
  end
   private

    def micropost_params
      params.require(:micropost).permit(:content)
    end
end