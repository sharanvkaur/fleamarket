class ItemsController < ApplicationController

  def new
  end

  def create
    @user = current_user
    @item = @user.items.create(item_params)
    redirect_to user_path
  end

  def show
    @user = current_user
    @items = @user.items
  end


  private

  def item_params
    params.require(:item).permit(:name, :category, :price, :condition, :description, :stock, :photo)
  end

  end
