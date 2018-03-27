class CandidatesController < ApplicationController

 	def new
    @wizard = ModelWizard.new(Candidate, session, params).start
    @candidate   = @wizard.object
  end

  def create
    @wizard 		= ModelWizard.new(Candidate, session, params, candidate_params).continue
    @candidate  = @wizard.object

    if @wizard.save
      redirect_to new_candidate_path
    else
      render :new
    end
  end

  def index
  end

  protected

  def candidate_params

   	params.require(:candidate).permit( 
      :current_step,
      :user_name, 
      :social_security, 
      :date_of_birth,
      :email,
      :street_address,
      :state,
      :city,
      :zip_code,
      :electronic_signature,
      districts_attributes: [:name, :nces, :contact, :email, :phone_number, :street_address, :state, :city, :zip_code, :_destroy]
    )
  end
end
