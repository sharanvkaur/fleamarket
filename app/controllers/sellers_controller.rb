class SellersController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def update
    t = Seller.find(params[:id])
    t.update(status_params)
    redirect_back(fallback_location: events_path)
  end

  private

  def status_params
    params.require(:seller).permit(:status, :id)
  end
end
