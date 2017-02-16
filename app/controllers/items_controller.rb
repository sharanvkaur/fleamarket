class ItemsController < ApplicationController
before_action :authenticate_user!, except: [:index, :show]

  def new
    @item = Item.new
    render :new
  end

  def create
    # @item = Item.create(item_params)
    @item = current_user.items.create(item_params)


    upload_file
    if @item.save
      delete_old_file
      redirect_to items_path
    else
      render :new
    end

  end

  def index
    @items = Item.all
    render :index
  end


  def show
    @item = Item.find_by_id(params[:id])
    render :show
  end

  def show_by_user
    current_user = User.find_by_id(params[:id])
    # @items = Item.find_by(user_id: current_user.id)
    @items = Item.where("user_id = ?", current_user.id)
    render :show_by_user
  end

  def edit
    @item = Item.find_by_id(params[:id])
    render :edit
  end


  def update
    @item = Item.find_by_id(params[:id])
    # @item = current_user.items.create(item_params)

    upload_file
    if @item.update(item_params)
      delete_old_file
      redirect_to items_path, notice: 'Item was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @item = Item.find_by_id(params[:id])
    delete_old_file @item.photo
    @item.delete
    redirect_to items_path
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
        params[:item].delete :photo
      end
    end

  def delete_old_file old_file = nil
    file_to_del = old_file || @old_file
    Cloudinary::Uploader.destroy(file_to_del, :invalidate => true) unless file_to_del.blank?
  end

  end
