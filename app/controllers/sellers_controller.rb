class SellersController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def update
    t = Seller.find(params[:id])
    t.update(status_params)
    redirect_back(fallback_location: events_path)
  end

  def create
     @seller = Seller.create(seller_params)

     if @seller.save
       redirect_to :back, alert: "You have sent a request to join as a seller."
     else
       redirect_to :back, alert: "You are already a seller."
     end
   end

  private

  def status_params
    params.require(:seller).permit(:status, :id)
  end

  def seller_params
    params.require(:seller).permit(:event_id, :user_id, :status)
  end
end
