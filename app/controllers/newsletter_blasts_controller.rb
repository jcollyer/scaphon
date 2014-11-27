class NewsletterBlastsController < ApplicationController
  def create
    NewsletterMailer.blast(self).deliver
  end
end
