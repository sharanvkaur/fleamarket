class UsersController < ApplicationController
  def show
    # @user = User.find_by_id(params[:id])
    # p @user
    # render :show

    @users = User.all
    @user = User.find_by_id(params[:id])
    render :show
  end
end
