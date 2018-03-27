# frozen_string_literal: true
class Users::RegistrationsController < Devise::RegistrationsController
  include ApplicationHelper
  before_action :configure_sign_up_params, only: [:create]
  #before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  def new
    # super
    @wizard = ModelWizard.new(User, session, params).start
    @user   = @wizard.object
  end

  # POST /resource
  def create
    @wizard = ModelWizard.new(User, session, params, configure_sign_up_params).continue
    @user   = @wizard.object

    if @wizard.save
      redirect_to new_user_registration_path
    else
      render :new
    end
    # super
    # self.resource = warden.authenticate!(auth_options)
    # set_flash_message(:notice, :signed_in) if is_navigational_format?
    # sign_in(resource_name, resource)
    # if !session[:return_to].blank?
    #   redirect_to session[:return_to]
    #   session[:return_to] = nil
    # else
    #   respond_with resource, :location => after_sign_in_path_for(resource)
    # end
  end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  protected

  #If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    #devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
    #devise_parameter_sanitizer.permit(:sign_up) { |u|
     # u.permit(
     params.require(:user).permit( 
        :current_step,
        :user_name, 
        :social_security, 
        :date_of_birth,
        :email,
        :street_address,
        :state,
        :city,
        :zip_code,
        :password,
        :password_confirmation,
        :electronic_signature,
        districts_attributes: [:name, :nces, :contact, :email, :phone_number, :street_address, :state, :city, :zip_code, :_destroy]
      )
    #}
  end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
