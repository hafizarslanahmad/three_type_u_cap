class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :debud_params

  def debud_params
    Rails.logger.info "👀 Received Params: #{params.inspect}"
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:user_type]) # Ya [:type] agar column ka naam 'type' hai
  end

  def after_sign_out_path_for(_resource_or_scope)
    new_home_path # Yahan apna desired path likho
  end

end
