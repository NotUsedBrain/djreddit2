class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configuration, if: :devise_controller?

protected

  def configuration
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
    devise_parameter_sanitizer.permit(:account_update, keys: [:nickname])
  end
end