class AttendancesController < ApplicationController
  def index
  end
  def new
    @attendance = Attendance.new
  end
  def create
    @attendance = Attendance.create(attendance_params)
    redirect_to events_path, alert: "You have successfully joined event."
  end
  private
  def attendance_params
    params.require(:attendance).permit(:user_id, :event_id)
  end
end
