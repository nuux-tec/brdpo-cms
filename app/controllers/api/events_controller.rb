class Api::EventsController < ApiController
  def index
    @events = Event.published
  end

  def show
    @event = Event.find(params[:id])
  end
end
