class EventsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]


  def index
   @events = Event.all
 end

 def create
   @event = current_user.events.create(event_params)
   redirect_to events_path
 end

 def new
   @event = current_user.events.new
 end

 def edit
   @event = Event.find(params[:id])
 end

 def show
   @event = Event.find(params[:id])
   @attendances = Attendance.where("event_id = ?", params[:id]).count
   @whoisgoing = Event.find(params[:id]).attendances
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
   params.require(:event).permit(:name, :location, :date, :target, :description, :other_sellers, :one_liner)
 end
end
