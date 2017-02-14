class ItemsController < ApplicationController

  def new
    @item = Item.new
    render :new
  end

  def create
    @item = Item.create(item_params)
    redirect_to action: "show"
  end

  def show
    @items = Item.all
    render :show
  end


  private

  def item_params
    params.require(:item).permit(:name, :category, :price, :condition, :description, :stock, :photo, :user_id)
  end

  end
