class Api::EventsController < ApiController
  def index
    @events = Event.published

    if params[:limit]
      @events = @events.limit(params[:limit])
    end
  end

  def show
    @event = Event.find(params[:id])
  end
end
