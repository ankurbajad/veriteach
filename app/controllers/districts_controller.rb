class DistrictsController < ApplicationController
    respond_to :html, :json, :js

  def new
    
  end

  def create
    session[:district_employee] =   district_employee_info_params if district_employee_info_params["job_title"].present?
    session[:email_verify_code] =   params[:email_verify_code] if params[:email_verify_code].present?
    session[:district]          =   district_params if district_params["nces"].present?
    session[:review]            =   params[:review] if params[:review].present?
    session[:review_perf]       =   review_performance_params  if review_performance_params["school_rating1"].present?
    session[:district_insurance]=   insurance_params if insurance_params["insurance_day"].present?
    session[:district_electronic_signature] = params[:district_electronic_signature] if params[:district_electronic_signature].present?
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
      @step = 5
      respond_to :js
    elsif (params[:step] == "fifth")
      @step = 6
      respond_to :js
    elsif (params[:step] == "sixth")
      @step = 7
      respond_to :js
    elsif (params[:step] == "seventh")
      @step = 7
      respond_to :js
    end
  end

  protected

  def district_employee_info_params
    params.permit(:first_name,:last_name,:job_title,:email,:phone_number)
  end

  def district_params
    params.permit(:name,:nces,:phone_number,:street_address,:state, :city, :zip_code, :institution_type, :regional_accrededation_agency, :state_of_accrededation, :accrededation_start, :accrededation_end)
  end

  def review_performance_params
    params.permit(:school_name1, :school_rating1, :school_from1, :school_to1, :school_name2, :school_rating2, :school_from2, :school_to2, :school_name3, :school_rating3, :school_from3, :school_to3, :school_name4, :school_rating4, :school_from4, :school_to4)
  end

  def insurance_params
    params.permit(:insurance_day, :insurance_from, :insurance_to, :health_state_insurance, :insurance_option, :hmp, :hdp, :family_coverage, :tenure_status)
  end
end
