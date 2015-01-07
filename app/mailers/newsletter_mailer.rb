class NewsletterMailer < ActionMailer::Base
  default from: "no_reply@scaphon.org"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.newsletter_mailer.blast.subject
  #
  def newsletter_blast(newsletter)
    @greeting = "heres the scoop!"
    # @id = @id
    @newsletter_name = "new SCAPHON SCOOP is here!"
    @url = "http://scaphon.org/newsletters"
    @users = User.all
    @email = []
    @users.each do |user|
      @emails = @email << user.email
    end


    mail to: @emails, from: "no_reply@scaphon.org", subject: "SCAPHON Scoop"
  end
end
