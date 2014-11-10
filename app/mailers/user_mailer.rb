class UserMailer < ActionMailer::Base
  default from: 'collyerdesign@gmail.com'

  def welcome_email(user)
    @user = user
    @url  = 'http://scaphon.org/log_in'
    mail :to => user.email, :subject => 'Welcome to SCAPHON!'
  end

  def password_reset(user)
    @user = user
    mail :to => user.email, :subject => "Password Reset"
  end

end
