class PreferencesController < ApplicationController
    def new
        @preference = Preference.new
    end
    
    def create
        @preference = Preference.new
    end
    
    private
    def preference_params
      params.require(:preference).permit(:email, :preference)
    end
end
