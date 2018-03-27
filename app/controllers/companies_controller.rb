class CompaniesController < ApplicationController
    respond_to :html, :json, :js

  def new
    
  end

  def create
    session[:company] = company_params if company_params["phone_number"].present?
    session[:email_verify] = params[:email_verify] if params[:email_verify].present?
    session[:employee] = employee_params if employee_params["social_security"].present?
    session[:electronic_signature] = params[:electronic_signature] if params[:electronic_signature].present?
    
    if (params[:step] == "first")
      @step = 2
      respond_to :js
    elsif (params[:step] == "second")
      @step = 3
      respond_to :js
    elsif (params[:step] == "third")
      @step = 4
      respond_to :js
    elsif (params[:step] == "forth")
      employee = Employee.create(session[:employee])
      employee.update(electronic_signature: session[:electronic_signature])
      employee.companies.create(session[:company]).update(email_verify_code: session[:email_verify])
      session[:company] = ""
      session[:email_verify] = ""
      session[:employee] = ""
      session[:electronic_signature] = ""
      redirect_to new_company_path
    end
  end

  protected

  def company_params
    params.permit(:name,:contact_name,:email,:phone_number,:street_address, :state, :city, :zip_code, :comments, :employee_id)
  end

  def employee_params
    params.permit(:name,:social_security,:email,:contact_number,:salary_inclusion, :document_retrieval, :terms_condition)
  end
end
