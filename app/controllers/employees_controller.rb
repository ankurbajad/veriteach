class EmployeesController < ApplicationController
  def new
    @wizard = ModelWizard.new(Employee, session, params).start
    @employee   = @wizard.object
  end

  def create
    @wizard     = ModelWizard.new(Employee, session, params, employee_params).continue
    @employee  = @wizard.object

    if @wizard.save
      redirect_to new_employee_path
    else
      render :new
    end
  end

  protected

  def employee_params
    params.require(:employee).permit( 
      :current_step,
      :name, 
      :social_security, 
      :email,
      :contact_number,
      :salary_inclusion,
      :document_retrieval,
      :terms_condition,
      :electronic_signature,
      companies_attributes: [:name, :contact_name, :email, :phone_number, :street_address, :state, :city, :zip_code, :comments, :_destroy]
    )
  end
end
