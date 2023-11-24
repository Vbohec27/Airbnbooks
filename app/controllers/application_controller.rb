class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[username])
  end

  def after_sign_in_path_for(resource)
    books_path
  end
end
