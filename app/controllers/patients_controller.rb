class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :edit, :update, :destroy] 
  def index
  
  end

  def show

  end  
  
  def edit
  end

  def update
  	 if @patient.update(patient_params)
			redirect_to @patient 	
  	else
  		render 'edit'
  	end
  end

  private

  def set_patient
  	@patient = User.find(params[:id])
  end
  def patient_params
  	params.require(:user).permit(:name, :phone_number, :email, :date_of_birth)
  end
end
