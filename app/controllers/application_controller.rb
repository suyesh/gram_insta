class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  ###Extra attributes in Devise User ###########################################
  before_action :configure_permitted_parameters, if: :devise_controller?
  ##############################################################################

  #Helper method to make devise sign_up and sign_in availaible everywhere ######
  helper_method :resource_name, :resource, :devise_mapping

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
  ##############################################################################

  protected

  def configure_permitted_parameters
    added_attrs = [:username, :phone_number,:email, :password, :password_confirmation, :remember_me]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end
end
