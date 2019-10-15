class EventsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_event, only: [:show, :edit, :update, :destroy, :publish, :disable]

  def index
    @events = Event.all
  end

  def show
  end

  def new
    @event = Event.new
  end

  def edit
  end

  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to events_path, notice: 'O evento foi criado com sucesso.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to events_path, notice: 'O evento foi atualizado com sucesso.' }
      else
        format.html { render :edit }
      end
    end
  end

  def publish
    respond_to do |format|
      @event.publish

      format.html { redirect_to events_path, notice: 'O evento foi publicado com sucesso.' }
    end
  end

  def disable
    respond_to do |format|
      @event.disable

      format.html { redirect_to events_path, notice: 'O evento foi desativado com sucesso.' }
    end
  end

  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_event
      @event = Event.find(params[:id])
    end

    def event_params
      params.require(:event).permit(:image, :name, :about, :when, :price, :location)
    end
end
