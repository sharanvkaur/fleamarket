class SellersController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def update
    t = Seller.find(params[:id])
    t.update(status_params)
    redirect_back(fallback_location: events_path)
  end

  def create
   @seller = Seller.create(seller_params)
   redirect_to events_path, alert: "You have sent a request to join as a seller."
 end

  private

  def status_params
    params.require(:seller).permit(:status, :id)
  end

  def seller_params
    params.require(:seller).permit(:event_id, :user_id, :status)
  end
end
