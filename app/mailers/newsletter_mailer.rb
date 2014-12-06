class NewsletterMailer < ActionMailer::Base
  default from: "no_reply@scaphon.org"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.newsletter_mailer.blast.subject
  #
  def blast(newsletter)
    @greeting = "Hi there, get the scoop!"

    mail to: 'collyerdesign@gmail.com', subject: "SCAPHON Scoop"
  end
end
