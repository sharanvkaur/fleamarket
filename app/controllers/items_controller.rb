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

  def edit
    @item = Item.find_by_id(params[:id])
    render :edit
  end

  def update
    upload_file
    if @item.update(item_params)
      delete_old_file
      redirect_to action:"show", notice: 'Item was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    delete_old_file @item.photo
    Item.find(params[:id]).delete
    redirect_to action:"show"
  end


  private

  def item_params
    params.require(:item).permit(:name, :category, :price, :condition, :description, :stock, :photo, :user_id)
  end

  def upload_file
    @item = Item.find_by_id(params[:id])
      if params[:item][:photo].present?
        if @item.valid?
          uploaded_file = params[:item][:photo].path
          cloudinary_file = Cloudinary::Uploader.upload(uploaded_file)
          p cloudinary_file
          p @old_file
          @old_file = @item.photo
          @item.photo = cloudinary_file['public_id']
          p @item.photo
        end
        params[:item].delete :photo
      end
    end

  def delete_old_file old_file = nil
    file_to_del = old_file || @old_file
    Cloudinary::Uploader.destroy(file_to_del, :invalidate => true) unless file_to_del.blank?
  end

  end
