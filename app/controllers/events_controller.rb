class EventsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]


  def index
   @events = Event.all
   end

 def create
   @event = current_user.events.create(event_params)

   upload_file
   if @event.save
     delete_old_file
     redirect_to events_path
   else
     render :new
   end
 end

 def new
   @event = Event.new
 end

 def edit
   @event = Event.find(params[:id])
 end


 def show
   @event = Event.find(params[:id])
   @attendances = Attendance.where("event_id = ?", params[:id]).count
   @whoisgoing = Event.find(params[:id]).attendances
   @whoisselling = Seller.where("event_id = ?", params[:id])
   # render json: params
 end

 def review
   @event = Event.find(params[:id])
   @attendances = Attendance.where("event_id = ?", params[:id]).count
   @whoisgoing = Event.find(params[:id]).attendances
   @whoisselling = Seller.where("event_id = ?", params[:id])

  #  redirect_to edit_event_path
 end

 def show_by_user
   #current_user = User.find_by_id(params[:id])
   # @items = Item.find_by(user_id: current_user.id)
   @events = Event.where("user_id = ?", current_user.id)
   render :show_by_user
 end


 def update
  #  puts "update method triggered"
  #  t = Event.find(params[:id])
  #  t.update(event_params)
  #  redirect_to events_path
  @event = Event.find_by_id(params[:id])

  upload_file
  if @event.update(event_params)
    delete_old_file
    redirect_to events_path, notice: 'Event was successfully updated.'
  else
    render :edit
  end
 end

 def destroy
   Event.find(params[:id]).delete
   redirect_to events_path
 end


 private


 def event_params
   params.require(:event).permit(:id, :name, :location, :date, :target, :description, :other_sellers, :one_liner, :user_id, :photo)
 end

 def upload_file
     if params[:event][:photo].present?
       if @event.valid?
         uploaded_file = params[:event][:photo].path
         cloudinary_file = Cloudinary::Uploader.upload(uploaded_file)
         @old_file = @event.photo
         @event.photo = cloudinary_file['public_id']
       end
       params[:event].delete :photo
     end
   end

 def delete_old_file old_file = nil
   file_to_del = old_file || @old_file
   Cloudinary::Uploader.destroy(file_to_del, :invalidate => true) unless file_to_del.blank?
 end

 def status_params
   params.require(:seller).permit(:status, :id)
 end
end
