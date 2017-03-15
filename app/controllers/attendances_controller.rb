class AttendancesController < ApplicationController
  def index
  end
  def new
    @attendance = Attendance.new
  end
  def create
    @attendance = Attendance.create(attendance_params)
    if @attendance.save
      redirect_to :back, alert: "You have successfully joined an event."
    else
      redirect_to :back, alert: "You have already joined the event."
    end
  end
  private
  def attendance_params
    params.require(:attendance).permit(:user_id, :event_id)
  end
end
