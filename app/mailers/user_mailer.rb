class UserMailer < ActionMailer::Base
  default from: 'no_reply@scaphon.org'

  def welcome_email(user)
    @user = user
    # @url  = 'http://www.scaphon.org/log_in'
    @url  = 'http://scaphon-rails4.herokuapp.com/log_in'
    mail :to => user.email, :subject => 'Welcome to SCAPHON!'
  end

  def password_reset(user)
    @user = user
    # @url = 'http://www.scaphon.org'
    @url = 'http://scaphon-rails4.herokuapp.com'
    mail :to => user.email, :subject => "Password Reset"
  end

end
