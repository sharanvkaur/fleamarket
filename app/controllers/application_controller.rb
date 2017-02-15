class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |user_params|
      user_params.permit(:name, :email, :password, :password_confirmation)
    end
    devise_parameter_sanitizer.permit(:sign_in) do |user_params|
      user_params.permit(:email, :password, :remember_me)
    end
    devise_parameter_sanitizer.permit(:account_update) do |user_params|
      user_params.permit(:profile_image, :name, :profession, :about, :country, :email, :password, :remember_me)
    end
    end
end
