class NewsletterMailer < ActionMailer::Base
  default from: "no_reply@scaphon.org"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.newsletter_mailer.blast.subject
  #
  def blast(newsletter)
    @greeting = "heres the scoop!"
    @users = User.all
    @email = []
    @users.each do |user|
      @emails = @email << user.email
    end


    mail to: @emails, subject: "SCAPHON Scoop"
  end
end
