class HomeController < ApplicationController
	before_filter :authenticate_user!, only: [:choose_site]
  def index
		redirect_to choose_site_path if user_signed_in?
  end

  def choose_site
  	if current_user.is_admin?
  		redirect_to users_path
  	else
  		redirect_to edit_patient_path(current_user)
  	end
  end
end
