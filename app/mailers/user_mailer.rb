class UserMailer < ApplicationMailer
  default from: 'notiication@gmail.com'

  layout 'mailer'

  def welcome_email
    @user = params[:user]
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to ContactV17')
  end
end
