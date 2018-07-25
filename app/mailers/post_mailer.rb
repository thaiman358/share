class PostMailer < ApplicationMailer
  default from: "tashackathon2018@gmail.com"

  def post_email(user, preference)
    @clientname = preference.email
    @id =preference.id
    mail to: user.email, subject: "PreferenceAnswerForm"
  end
end
