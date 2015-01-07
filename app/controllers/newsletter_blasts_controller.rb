class NewsletterBlastsController < ApplicationController
  def new
    NewsletterMailer.newsletter_blast(self).deliver
    redirect_to root_url, :notice => "Newsletter email blast sent out!"
  end

end
