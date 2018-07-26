class PreferencesController < ApplicationController
    User = Struct.new(:name, :email)
    
    def index
        @preference = Preference.where(email: current_user.email)
        @otherpreference = Preference.where(user_id: current_user.id).where.not(email: current_user.email)
    end

    def new
        @preference = Preference.new
    end
    
    def create
        @preference = Preference.new(preference_params)
        #@preference.email = current_user.email
        @preference.user_id = current_user.id
        if @preference.save
          if @preference.email == current_user.email
          else              
            user = User.new("name", @preference.email)
            PostMailer.post_email(user, @preference).deliver
          end
          redirect_to preferences_path
        else
            render 'new'
        end
    end
    
    def show
      @preference = Preference.find(params[:id])
    end
    
    def edit
      @preference = Preference.find(params[:id])
    end
    
    def update
        @preference = Preference.find(params[:id])
      if @preference.update(preference_params)
        #redirect_to blogs_path, notice: "ブログを編集しました！"
      else
        render 'edit'
      end
      redirect_to tops_path
    end
    
    private
    def preference_params
      params.require(:preference).permit(:email, :preference, :unpreference,:user_i, :user_name, :client_name)
    end
end

