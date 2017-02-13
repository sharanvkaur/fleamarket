class EventsController < ApplicationController
  def index
   @events = Event.all
 end

 def create
   Event.create(event_params)
   redirect_to events_path
 end

 def new
   @event = Event.new
 end

 def edit
   @event = Event.find(params[:id])
 end

 def show
   @event = Event.find(params[:id])
   # render json: params
 end

 def update
   t = Event.find(params[:id])
   t.update(event_params)
   redirect_to events_path
 end

 def destroy
   Event.find(params[:id]).delete
   redirect_to events_path
 end

 private


 def event_params
   params.require(:event).permit(:name, :location, :date, :target)
 end
end
