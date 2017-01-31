class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @current_user = current_user
    @event = @current_user.events.build(event_params)
    @event.creator_id = @current_user.id
    if @event.save
      render 'index'
    end
  end

  def index
    @events = Event.all
  end

  def show
    @user = User.find(params[:id])
    @events = @user.events
  end

  def event_params
    params.require(:event).permit(:name, :location, :time, :description)
  end
end
