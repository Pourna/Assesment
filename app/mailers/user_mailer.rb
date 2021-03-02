class UserMailer < ApplicationMailer
  default from: 'pournachandran@gmail.com'

  layout "mailer"

  def welcome_email
    @user = params[:firstname]
    @url  = 'http://example.com/login'
    mail(to: "sspourna.shoden@gmail.com", subject: 'Welcome to ContactV17')
  end
end
