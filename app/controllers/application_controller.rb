class ApplicationController <  ActionController::Base
	protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!

	def after_sign_in_path_for(resource)
		choose_site_path
  end 	

	protected

  def configure_permitted_parameters
	  devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :date_of_birth, :email, :password, :is_admin, :password_confirmation, :phone_number, :avatar, :school_id])
	end
end
