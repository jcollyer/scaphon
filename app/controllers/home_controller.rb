class HomeController < ApplicationController
  def index
    @events = Affair.all.limit(3)
    @event = Affair.last
    @event_picture = @event.pictures.first



    @newsletter = Newsletter.last
    @newsletter_picture = @newsletter.pictures.first
  end
end
