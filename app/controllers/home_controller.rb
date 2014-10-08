class HomeController < ApplicationController
  def index
    @events = Affair.all.limit(3)
    @event = Affair.last

    if @event
      @event_picture = @event.pictures.first
    end

    @newsletters = Newsletter.all

    @community = Community.last
    if @community
      @community_picture = @community.pictures.first
    end
  end
end
