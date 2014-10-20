class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :load_schema, :auth_user!, :set_mailer_host
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:accept_invitation).concat([:name])
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :ic_no, :gender, :birthday, :marital_status, :profession, :mobile_no, :emergency_no, :property_name, :lot_no, :resident_type, :email, :password, :password_confirmation) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :ic_no, :gender, :birthday, :marital_status, :profession, :mobile_no, :emergency_no, :property_name, :lot_no, :resident_type, :email, :password, :password_confirmation, :current_password) }
  end

  private

  def load_schema
  	Apartment::Tenant.switch('public')
  	return unless request.subdomain.present?

  	
  	if current_account
  	  Apartment::Tenant.switch(request.subdomain)
  	else
  	  redirect_to root_url(subdomain: false)
  	end
  end

  def current_account
    @account ||= Account.where(subdomain: request.subdomain).first
  end
  helper_method :current_account

  def set_mailer_host
    subdomain = current_account ? "#{current_account.subdomain}." : ""
    ActionMailer::Base.default_url_options[:host] = "#{subdomain}lvh.me:3000"
  end

  def after_sign_out_path_for(resource_or_scope)
    new_user_session_path
  end

  def after_invite_path_for(resource)
    users_path
  end

  def auth_user!(opts = {})
    if user_signed_in?
      authenticate_user!
    else
      authenticate_resident!
    end
  end

 end
