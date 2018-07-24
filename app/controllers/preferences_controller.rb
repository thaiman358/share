class PreferencesController < ApplicationController
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
            redirect_to preferences_path
        else
            render 'new'
        end
    end
    
    private
    def preference_params
      params.require(:preference).permit(:email, :preference, :user_id)
    end
end
