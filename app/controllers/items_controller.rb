class ItemsController < ApplicationController

  def new
    @item = Item.new
    render :new
  end

  def create
    @item = Item.create(item_params)

    upload_file
    if @item.save
      delete_old_file
      redirect_to action: "show"
    else
      render :new
    end

  end


  def show
    @items = Item.all
    render :show
  end

  def destroy
    Item.find(params[:id]).delete
    redirect_to action:"show"
  end


  private

  def item_params
    params.require(:item).permit(:name, :category, :price, :condition, :description, :stock, :photo, :user_id)
  end

  def upload_file
      if params[:item][:photo].present?
        if @item.valid?
          uploaded_file = params[:item][:photo].path
          cloudinary_file = Cloudinary::Uploader.upload(uploaded_file)
          @old_file = @item.photo
          @item.photo = cloudinary_file['public_id']
        end
        params[:item].delete :picture
      end
    end

  def delete_old_file old_file = nil
    file_to_del = old_file || @old_file
    Cloudinary::Uploader.destroy(file_to_del, :invalidate => true) unless file_to_del.blank?
  end

  end
