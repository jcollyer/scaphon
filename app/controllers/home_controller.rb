class HomeController < ApplicationController
  def index
    @event = Affair.last
    @picture = @event.pictures.first
  end
end
