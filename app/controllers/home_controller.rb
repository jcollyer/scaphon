class HomeController < ApplicationController
  def index
    @events = Affair.all.limit(3)
    @event = Affair.last
    if @event
      @event_picture = @event.pictures.first
    end
    @newsletter = Newsletter.last
    if @newsletter
      @newsletter_picture = @newsletter.pictures.first
    end

    @community = Community.last
    if @community
      @community_picture = @community.pictures.first
    end
  end
end
