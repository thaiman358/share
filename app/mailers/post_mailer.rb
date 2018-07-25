class PostMailer < ApplicationMailer
  default from: "tashackathon2018@gmail.com"

  def post_email(user, preference)
    @username = preference.user_name
    @clientname = preference.client_name
    @id =preference.id
    
    mail to: user.email, subject: "PreferenceAnswerForm"
  end
end
