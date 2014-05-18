class HomeController < ApplicationController
  def index
    @events = Affair.all.limit(2)
    @event = Affair.last
    @event_picture = @event.pictures.first

    @newsletters = Newsletter.all.limit(3)
    @newsletter = Newsletter.last
    @newsletter_picture = @newsletter.pictures.first

    @scholarships = Scholarship.all.limit(3)
  end
end
