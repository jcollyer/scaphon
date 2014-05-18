class HomeController < ApplicationController
  def index
    @event = Affair.last
    @event_picture = @event.pictures.first

    @scholarship = Scholarship.last
    @scholarship_picture = @scholarship.pictures.first

    @newsletter = Newsletter.last
    @newsletter_picture = @newsletter.pictures.first
  end
end
