class UsersController < ApplicationController
    def new
        @user = User.new
    end
    
    def create
      @user = User.new(user_params)
      if @user.save
      # 保存の成功した場合の処理
        session[:user_id] = @user.id
        redirect_to new_ownprefer_path
      else
        render 'new'
      end
    end
        
    def show
      @user = User.find(params[:id])
      @prefer = Preference.where(email: current_user.email).where(user_id: current_user.id)
    end

    private
    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation, :title, :industry)
    end
end
