class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user_items = @user.items
  end
end
