class PreferencesController < ApplicationController
    def new
        @preference = Preference.new
    end
    
    def create
        @preference = Preference.new(preference_params)
        #@preference.email = current_user.email
        @preference.user_id = current_user.id
        if @preference.save
            redirect_to tops_path
        else
            render 'new'
        end
    end
    
    private
    def preference_params
      params.require(:preference).permit(:email, :preference, :user_id)
    end
end
