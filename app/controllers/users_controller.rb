class UsersController < ApplicationController
  def show
    @user = User.find_by_id(params[:id])
    current_user = User.find_by_id(params[:id])
    @events = Event.where("user_id = ?", current_user.id)
    render :show
  end
end
