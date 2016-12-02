class ApplicationController < ActionController::Base
  # before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!


  protected

  def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up) do |user_params|
    user_params.permit({ roles: [] }, :first_name,:last_name, :gender, :date_of_birth, :phone_number,:email, :password, :password_confirmation)
  end
end
end