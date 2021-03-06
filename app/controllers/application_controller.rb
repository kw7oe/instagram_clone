class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?


  protected 
  def configure_permitted_parameters 
  	devise_parameter_sanitizer.permit(:account_update) do |user_params|
  		user_params.permit(:username, :biography, :email, :password,
      :password_confirmation, :current_password, :profile_picture)
  	end
  end

end
